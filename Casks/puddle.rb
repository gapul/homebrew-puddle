cask "puddle" do
  version "2.17.0"
  sha256 "19d13c1ff4aa31c1018975874ef6bf2b1a3b79c48574c4a526e8b59e1f3ef029"

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
