class Heimdal < Formula
  desc "Free Kerberos 5 implementation"
  homepage "https://www.h5l.org"
  url "https://github.com/heimdal/heimdal/releases/download/heimdal-7.8.0/heimdal-7.8.0.tar.gz"
  sha256 "fd87a207846fa650fd377219adc4b8a8193e55904d8a752c2c3715b4155d8d38"
  license "BSD-3-Clause"

  livecheck do
    url :stable
    strategy :github_latest
    regex(%r{href=.*?/tag/heimdal[._-]v?(\d+(?:\.\d+)+)["' >]}i)
  end

  bottle do
    sha256 arm64_ventura:  "589dd90ba100e7d4167a0973aa779e1f00d11482aa8d65188fa71a8b50bdb878"
    sha256 arm64_monterey: "5bf1331cbf18fbacee694aebd48cf61bcebcd170fbbbe9e9c8a2bdf9ee90fcf6"
    sha256 arm64_big_sur:  "5c45da30c4f837fd11fa4d656ff9f92c0a7cfd1d6c7e3442d925cd4c6406b766"
    sha256 ventura:        "9f45c3bfa2a0e53d52ca57d84720f543c19c39a04f4c0262c04d358aede86289"
    sha256 monterey:       "f91432a5c773478e95f79aed4381d8659980e7c19358cd109d9502eeaf5d6c6f"
    sha256 big_sur:        "b0f45237bb7226ab0c6b06ce4c2a6ce143eded7335232e1cb85133863ad96f60"
    sha256 catalina:       "1da6cca0420efc5ccd5075b8c3076435a9e2b077261d9ad91e0e3d4e644d38d0"
    sha256 x86_64_linux:   "6505b354257b8f5096a209eb9bc8fbfea1f3377efff1e84b4c58a308c9cf2b34"
  end

  keg_only "conflicts with Kerberos"

  depends_on "bison" => :build
  depends_on "berkeley-db"
  depends_on "flex"
  depends_on "lmdb"
  depends_on "openldap"
  depends_on "openssl@1.1"

  uses_from_macos "libxcrypt"
  uses_from_macos "perl"

  on_linux do
    depends_on "pkg-config" => :build
    depends_on "python@3.11" => :build
  end

  resource "JSON" do
    url "https://cpan.metacpan.org/authors/id/I/IS/ISHIGAKI/JSON-4.10.tar.gz"
    sha256 "df8b5143d9a7de99c47b55f1a170bd1f69f711935c186a6dc0ab56dd05758e35"
  end

  def install
    ENV.prepend_create_path "PERL5LIB", libexec/"lib/perl5"

    resource("JSON").stage do
      system "perl", "Makefile.PL", "INSTALL_BASE=#{libexec}"
      system "make"
      system "make", "install"
    end

    ENV.append "LDFLAGS", "-L#{Formula["berkeley-db"].opt_lib}"
    ENV.append "LDFLAGS", "-L#{Formula["lmdb"].opt_lib}"
    ENV.append "CFLAGS", "-I#{Formula["lmdb"].opt_include}"

    args = %W[
      --disable-debug
      --disable-dependency-tracking
      --prefix=#{prefix}
      --without-x
      --enable-static=no
      --enable-pthread-support
      --disable-afs-support
      --disable-ndbm-db
      --disable-heimdal-documentation
      --with-openldap=#{Formula["openldap"].opt_prefix}
      --with-openssl=#{Formula["openssl@1.1"].opt_prefix}
      --with-hcrypto-default-backend=ossl
      --with-berkeley-db
      --with-berkeley-db-include=#{Formula["berkeley-db"].opt_include}
    ]

    system "./configure", *args
    system "make", "install"
  end

  test do
    assert_match "-L#{lib}", shell_output("#{bin}/krb5-config --libs")
  end
end
