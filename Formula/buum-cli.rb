class BuumCli < Formula
  desc "Terminal tool to update Homebrew and Mac App Store apps"
  homepage "https://github.com/EmreErinc/buum-cli"
  url "https://github.com/EmreErinc/buum-cli/releases/download/v1.0.4/buum-cli-1.0.4-universal.tar.gz"
  sha256 "4c9daa8fb5f8d6af5338d76ee57fb3dcc0801e4c0f59f807a9276f1733aa4e7e"
  version "1.0.4"
  license "GPL-3.0-only"

  depends_on :macos

  def install
    bin.install "buum-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buum-cli --version")
  end
end
