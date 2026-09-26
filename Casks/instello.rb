cask "instello" do
  version "0.1.1"
  sha256 "6a6f2e0f8846e34260562b26999ff9bd864085bbf7b2ecd35c4b74e8c0460300"

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
