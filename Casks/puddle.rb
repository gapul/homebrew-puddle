cask "puddle" do
  version "2.17.3"
  sha256 "ff647613ec8aa0e25f99aa8af5a92364eafe522e7629a448bb33e53148b69a05"

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
