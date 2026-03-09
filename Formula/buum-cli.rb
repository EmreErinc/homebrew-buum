class BuumCli < Formula
  desc "Terminal tool to update Homebrew and Mac App Store apps"
  homepage "https://github.com/EmreErinc/buum-cli"
  url "https://github.com/EmreErinc/buum-cli/releases/download/v1.0.5/buum-cli-1.0.5-universal.tar.gz"
  sha256 "1cc0de937b1e11ae85a4df205b6bc2cdfc8553b58dfdbf39ca428c583e825400"
  version "1.0.5"
  license "GPL-3.0-only"

  depends_on :macos

  def install
    bin.install "buum-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buum-cli --version")
  end
end
