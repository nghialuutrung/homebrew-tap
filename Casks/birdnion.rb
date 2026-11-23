cask "birdnion" do
  version "0.10.65"
  sha256 "3f31192a39f80d7adb100ab21f8201911547b2680e2a15e4e98b782ece129cee"

  url "https://github.com/hapo-nghialuu/BirdNion/releases/download/v#{version}/BirdNion-#{version}.zip"
  name "BirdNion"
  desc "AI quota menu bar app — tracks MiniMax, Codex, Claude, Hapo AI Hub and more"
  homepage "https://github.com/hapo-nghialuu/BirdNion"

  livecheck do
    url :homepage
    strategy :github_latest_release
  end

  depends_on :macos

  app "BirdNion.app"

  zap trash: [
    # BirdNion config + tokens
    "~/.config/birdnion",
    "~/.birdnion",
    "~/Library/Application Support/BirdNion",
    "~/Library/Preferences/com.local.birdnion.plist",
    "~/Library/Caches/com.local.birdnion",
    "~/Library/HTTPStorages/com.local.birdnion",
    "~/Library/HTTPStorages/com.local.birdnion.binarycookies",
    # Legacy (old app name AIStatusbar — kept for migration cleanup)
    "~/Library/Application Support/AIStatusbar",
    "~/Library/Preferences/com.local.aistatusbar.plist",
    "~/Library/Caches/com.local.aistatusbar",
    "~/Library/HTTPStorages/com.local.aistatusbar",
    "~/Library/HTTPStorages/com.local.aistatusbar.binarycookies",
  ]
end
