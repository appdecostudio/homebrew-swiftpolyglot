class Swiftpolyglot < Formula
  desc "Validate .xcstrings translation files for completeness"
  homepage "https://github.com/appdecostudio/SwiftPolyglot"
  license "MIT"
  version "2.0.2"

  url "https://github.com/appdecostudio/SwiftPolyglot/releases/download/v#{version}/swiftpolyglot-#{version}-macos.tar.gz"
  sha256 "ce9d53831380a905f30931f07e60aceabbf737c6e5ce3d00db54245260e6189f"

  depends_on :macos

  def install
    bin.install "swiftpolyglot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/swiftpolyglot --version")
  end
end
