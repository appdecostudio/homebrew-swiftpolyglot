class Swiftpolyglot < Formula
  desc "Validate .xcstrings translation files for completeness"
  homepage "https://github.com/appdecostudio/SwiftPolyglot"
  license "MIT"
  version "2.0.0"

  url "https://github.com/appdecostudio/SwiftPolyglot/releases/download/v#{version}/swiftpolyglot-#{version}-macos.tar.gz"
  sha256 "04c045c8edf38d7d77a9be06a0ab8f6965d7fff19076b3e2920711638c556193"

  depends_on :macos

  def install
    bin.install "swiftpolyglot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/swiftpolyglot --version")
  end
end
