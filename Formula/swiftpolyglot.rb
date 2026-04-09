class Swiftpolyglot < Formula
  desc "Validate .xcstrings translation files for completeness"
  homepage "https://github.com/appdecostudio/SwiftPolyglot"
  license "MIT"
  version "2.0.0"

  url "https://github.com/appdecostudio/SwiftPolyglot/releases/download/v#{version}/swiftpolyglot-#{version}-macos.tar.gz"
  sha256 "1654ffdd8807cb56fafa086aead31738316168622cbe30c0abc6cbe026d8f244"

  depends_on :macos

  def install
    bin.install "swiftpolyglot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/swiftpolyglot --version")
  end
end
