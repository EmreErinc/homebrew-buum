cask "buum" do
  version "1.9.0"
  sha256 "fbc235332f1c958a7281150a62e0a2145444f8a25033ab5f48a07fd2b3762425"

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
