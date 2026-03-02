class BuumCli < Formula
  desc "Terminal tool to update Homebrew and Mac App Store apps"
  homepage "https://github.com/EmreErinc/buum-cli"
  url "https://github.com/EmreErinc/buum-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "80d8904126fc2e7e714604708d2d9b85d535b443f42b11f7eada6983f70dfac3"
  license "GPL-3.0-only"

  depends_on macos: :ventura

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/buum-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buum-cli --version")
  end
end
