class BuumCli < Formula
  desc "Terminal tool to update Homebrew and Mac App Store apps"
  homepage "https://github.com/EmreErinc/buum-cli"
  url "https://github.com/EmreErinc/buum-cli/releases/download/v1.0.3/buum-cli-1.0.3-universal.tar.gz"
  sha256 "bbc3d2c68885a60864543df328caa56d509b1ce3d973c65adfff2537aa5bd462"
  version "1.0.3"
  license "GPL-3.0-only"

  depends_on :macos

  def install
    bin.install "buum-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buum-cli --version")
  end
end
