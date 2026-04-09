class Swiftpolyglot < Formula
  desc "Validate .xcstrings translation files for completeness"
  homepage "https://github.com/appdecostudio/SwiftPolyglot"
  license "MIT"
  version "2.0.0"

  url "https://github.com/appdecostudio/SwiftPolyglot/releases/download/v#{version}/swiftpolyglot-#{version}-macos.tar.gz"
  sha256 "289dab74591fbd05ace81a41eb0122c1663ed44256451825655b3f99a6c7a050"

  depends_on :macos

  def install
    bin.install "swiftpolyglot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/swiftpolyglot --version")
  end
end
