cask "puddle" do
  version "2.24.0"
  sha256 "e3da3da2db2c2aaba14ebeb5cb9391a4ee674007821d2134c117d42467876fbd"

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
