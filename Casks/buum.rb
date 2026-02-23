cask "buum" do
  version "1.8.0"
  sha256 "6bb2d9863421a31f96291a637bba89e8c644a9687aa3de237a5e44d53a14fbca"

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
