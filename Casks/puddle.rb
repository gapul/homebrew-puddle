cask "puddle" do
  version "2.19.0"
  sha256 "0567e08710915721bd93c00c9a274163edafb0b6c29f1c88ee6a48da56a318d3"

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
