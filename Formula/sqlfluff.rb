class Sqlfluff < Formula
  include Language::Python::Virtualenv

  desc "SQL linter and auto-formatter for Humans"
  homepage "https://docs.sqlfluff.com/"
  url "https://files.pythonhosted.org/packages/90/59/a2f01e9488669fbccf2aecf5931c6f97bffe3452c27b495062373c22ae4d/sqlfluff-2.2.1.tar.gz"
  sha256 "93b4c49a6640e15fa5fddbc022d0544675b9d4ac382d68da029d07c713cb6e7e"
  license "MIT"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "bdf2abbd8657cb8598de641dabf619f6578cb534728f0890e46f8fb978ee96e0"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "ab5b0b586bfeb74f2ab518c8455913668b9988f3451cb7a3f9f2544505acb867"
    sha256 cellar: :any_skip_relocation, arm64_big_sur:  "98e4c86ee581ab46357d12b274a5c1550715457a7a88e3d13c196b693fdae8ed"
    sha256 cellar: :any_skip_relocation, ventura:        "91ef933afd4d41a2775e661a4ce0bcbf2cf63ec7c7c8b197405009625c25cb72"
    sha256 cellar: :any_skip_relocation, monterey:       "75713c0ee0ffbcff57818c05cdcdf2bfef523d57219dcefc22e883bf2cbe3a26"
    sha256 cellar: :any_skip_relocation, big_sur:        "e63209599da57c735e3b40d231cef739d30c88e464f92041069f0630ed2eddb6"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "b0a5e7307bd48b5827d7111443ee05064a211dc2258ad591ab66ac4ab1543af5"
  end

  depends_on "pygments"
  depends_on "python-typing-extensions"
  depends_on "python@3.11"
  depends_on "pyyaml"

  resource "appdirs" do
    url "https://files.pythonhosted.org/packages/d7/d8/05696357e0311f5b5c316d7b95f46c669dd9c15aaeecbb48c7d0aeb88c40/appdirs-1.4.4.tar.gz"
    sha256 "7d5d0167b2b1ba821647616af46a749d1c653740dd0d2415100fe26e27afdf41"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/f3/0d/f7b6ab21ec75897ed80c17d79b15951a719226b9fababf1e40ea74d69079/chardet-5.2.0.tar.gz"
    sha256 "1b3b6ff479a8c414bc3fa2c0852995695c4a026dcd6d0633b2dd092ca39c1cf7"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/72/bd/fedc277e7351917b6c4e0ac751853a97af261278a4c7808babafa8ef2120/click-8.1.6.tar.gz"
    sha256 "48ee849951919527a045bfe3bf7baa8a959c423134e1a5b98c05c20ba75a1cbd"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  resource "diff-cover" do
    url "https://files.pythonhosted.org/packages/37/c2/f1919023fea5079b479d97793c368db8dd337170a7dbc4b5e76c1fc29d12/diff_cover-7.7.0.tar.gz"
    sha256 "60614cf7e722cf7fb1bde497afac0b514294e1e26534449622dac4da296123fb"
  end

  resource "iniconfig" do
    url "https://files.pythonhosted.org/packages/d7/4b/cbd8e699e64a6f16ca3a8220661b5f83792b3017d0f79807cb8708d33913/iniconfig-2.0.0.tar.gz"
    sha256 "2d91e135bf72d31a410b17c16da610a82cb55f6b0477d1a902134b24a455b8b3"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/7a/ff/75c28576a1d900e87eb6335b063fab47a8ef3c8b4d88524c4bf78f670cce/Jinja2-3.1.2.tar.gz"
    sha256 "31351a702a408a9e7595a8fc6150fc3f43bb6bf7e319770cbc0db9df9437e852"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/6d/7c/59a3248f411813f8ccba92a55feaac4bf360d29e2ff05ee7d8e1ef2d7dbf/MarkupSafe-2.1.3.tar.gz"
    sha256 "af598ed32d6ae86f1b747b82783958b1a4ab8f617b06fe68795c7f026abbdcad"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/b9/6c/7c6658d258d7971c5eb0d9b69fa9265879ec9a9158031206d47800ae2213/packaging-23.1.tar.gz"
    sha256 "a392980d2b6cffa644431898be54b0045151319d1e7ec34f0cfed48767dd334f"
  end

  resource "pathspec" do
    url "https://files.pythonhosted.org/packages/a0/2a/bd167cdf116d4f3539caaa4c332752aac0b3a0cc0174cdb302ee68933e81/pathspec-0.11.2.tar.gz"
    sha256 "e0d8d0ac2f12da61956eb2306b69f9469b42f4deb0f3cb6ed47b9cce9996ced3"
  end

  resource "pluggy" do
    url "https://files.pythonhosted.org/packages/8a/42/8f2833655a29c4e9cb52ee8a2be04ceac61bcff4a680fb338cbd3d1e322d/pluggy-1.2.0.tar.gz"
    sha256 "d12f0c4b579b15f5e054301bb226ee85eeeba08ffec228092f8defbaa3a4c4b3"
  end

  resource "pytest" do
    url "https://files.pythonhosted.org/packages/a7/f3/dadfbdbf6b6c8b5bd02adb1e08bc9fbb45ba51c68b0893fa536378cdf485/pytest-7.4.0.tar.gz"
    sha256 "b4bf8c45bd59934ed84001ad51e11b4ee40d40a1229d2c79f9c592b0a3f6bd8a"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/4f/1d/6998ba539616a4c8f58b07fd7c9b90c6b0f0c0ecbe8db69095a6079537a7/regex-2023.8.8.tar.gz"
    sha256 "fcbdc5f2b0f1cd0f6a56cdb46fe41d2cce1e644e3b68832f3eeebc5fb0f7712e"
  end

  resource "tblib" do
    url "https://files.pythonhosted.org/packages/64/e3/d9aebe40d15d2c4c73a0ff8555326ef42a62ce3e5320ceb1aa762e4fbb54/tblib-2.0.0.tar.gz"
    sha256 "a6df30f272c08bf8be66e0775fad862005d950a6b8449b94f7c788731d70ecd7"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/f1/fb/6f40278d3b74f1486147aebf828ad081226f4f80b5b31a042386acc76dde/tqdm-4.66.0.tar.gz"
    sha256 "cc6e7e52202d894e66632c5c8a9330bd0e3ff35d2965c93ca832114a3d865362"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sqlfluff --version")
    (testpath/"test.sql").write <<~EOS
      SELECT 1;
    EOS
    assert_match "All Finished!", shell_output("#{bin}/sqlfluff lint --dialect sqlite --nocolor #{testpath}/test.sql")
  end
end
