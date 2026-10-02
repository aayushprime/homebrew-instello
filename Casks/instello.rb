cask "instello" do
  version "0.1.6"
  sha256 "63c750a8866c0d0da99360296083b165427c0bc88f145856015ef3c662ac7f33"

  url "https://download.instello.app/Instello-#{version}.dmg"
  name "Instello"
  desc "Fix English, dictate and convert files from any app"
  homepage "https://instello.app/"

  livecheck do
    url "https://download.instello.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Instello.app"

  zap trash: [
    "~/Library/Application Support/Instello",
    "~/Library/Caches/com.instello.Instello",
    "~/Library/HTTPStorages/com.instello.Instello",
    "~/Library/Preferences/com.instello.Instello.plist",
  ]
end
