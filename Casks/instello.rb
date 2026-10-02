cask "instello" do
  version "0.1.7"
  sha256 "be90c8d1fe17a9429788b75c14442b1f92b1155979b4845c40ed14f90ad8038f"

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
