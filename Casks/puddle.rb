cask "puddle" do
  version "2.17.6"
  sha256 "617795c98a85203195c9d3f21773a57b4067906e5f9d8663c74ab4848ac75346"

  url "https://github.com/gapul/homebrew-puddle/releases/download/v#{version}/Puddle-#{version}.zip"
  name "Puddle"
  desc "Make any website your Mac desktop wallpaper (FOSS fork of Plash)"
  homepage "https://github.com/gapul/Puddle"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Puddle.app"

  zap trash: [
    "~/Library/Application Support/net.gapul.Puddle",
    "~/Library/Caches/net.gapul.Puddle",
    "~/Library/Containers/net.gapul.Puddle",
    "~/Library/HTTPStorages/net.gapul.Puddle",
    "~/Library/Preferences/net.gapul.Puddle.plist",
  ]
end
