cask "instello" do
  version "0.1.4"
  sha256 "d83ca45e7123ea047764f026fe93af53d98ef2109592d3a5ea52c0a734d47efb"

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
