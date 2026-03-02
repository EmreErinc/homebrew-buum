class BuumCli < Formula
  desc "Terminal tool to update Homebrew and Mac App Store apps"
  homepage "https://github.com/EmreErinc/buum-cli"
  url "https://github.com/EmreErinc/buum-cli/releases/download/v1.0.2/buum-cli-1.0.2-universal.tar.gz"
  sha256 "03ca957ec13419fde732cb070df0a613b5283aabb1e203b07111b4055d1e8fd3"
  version "1.0.2"
  license "GPL-3.0-only"

  depends_on :macos

  def install
    bin.install "buum-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buum-cli --version")
  end
end
