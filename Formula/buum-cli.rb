class BuumCli < Formula
  desc "Terminal tool to update Homebrew and Mac App Store apps"
  homepage "https://github.com/EmreErinc/buum-cli"
  version "1.0.0"
  license "GPL-3.0-only"

  on_arm do
    url "https://github.com/EmreErinc/buum-cli/releases/download/v1.0.0/buum-cli-1.0.0-arm64-apple-macosx.tar.gz"
    sha256 "5e85894e78f181162217b5f0ce7f40ff67201562925936ee92fd1fd0853e393f"
  end

  depends_on :macos

  def install
    bin.install "buum-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buum-cli --version")
  end
end
