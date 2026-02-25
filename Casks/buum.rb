cask "buum" do
  version "1.9.1"
  sha256 "9520a4afcc638a442452580ed0f7ecbdcae4db0619cfc8d0d56edfa1d18d7d9c"

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
