cask "buum" do
  version "1.6.0"
  sha256 "7ecfb1e85c9a392e67d93277f410da46588157752614c8d5e611c0eff00fa620"

  url "https://github.com/emreerinc/buum-app/releases/download/v#{version}/Buum-#{version}.zip"
  name "Buum"
  desc "Menu bar app to update Homebrew and Mac App Store apps"
  homepage "https://github.com/emreerinc/buum-app"

  # Not notarized yet — first launch requires:
  # System Settings → Privacy & Security → Open Anyway

  depends_on macos: ">= :ventura"

  app "Buum.app"

  zap trash: [
    "~/Library/Application Support/com.emreerinc.buum",
    "~/Library/Preferences/com.emreerinc.buum.plist",
    "~/Library/Caches/com.emreerinc.buum",
  ]
end
