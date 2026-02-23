cask "buum" do
  version "1.5.0"
  sha256 "d45f25e7bd33f62111d6dd68c451a6e19c54dfc68f3f2a4c6ad339265612e927"

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
