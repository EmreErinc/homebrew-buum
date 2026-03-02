class BuumCli < Formula
  desc "Terminal tool to update Homebrew and Mac App Store apps"
  homepage "https://github.com/EmreErinc/buum-cli"
  url "https://github.com/EmreErinc/buum-cli/releases/download/v1.0.0/buum-cli-1.0.0-macos.tar.gz"
  sha256 "b5c612b2915e7e4f1af0d0efa73d3a906199e9492816c7a921ee654363b2ccaa"
  version "1.0.0"
  license "GPL-3.0-only"

  depends_on :macos

  def install
    bin.install "buum-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buum-cli --version")
  end
end
