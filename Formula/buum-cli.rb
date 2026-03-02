class BuumCli < Formula
  desc "Terminal tool to update Homebrew and Mac App Store apps"
  homepage "https://github.com/EmreErinc/buum-cli"
  url "https://github.com/EmreErinc/buum-cli/releases/download/v1.0.1/buum-cli-1.0.1-macos.tar.gz"
  sha256 "9f51d02346f93a52fdbbda965d5e67b2a7d45622d703f62c5721f2f503897ffe"
  version "1.0.1"
  license "GPL-3.0-only"

  depends_on :macos

  def install
    bin.install "buum-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buum-cli --version")
  end
end
