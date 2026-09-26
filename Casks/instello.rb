cask "instello" do
  version "0.1.5"
  sha256 "5524ba251f4cebb3043968a71d3779124b6d502c197c8533c082d814be44312a"

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
