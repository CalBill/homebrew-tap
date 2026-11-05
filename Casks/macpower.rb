# Ad-hoc signed and not notarized. Install with:
#   brew install --cask --no-quarantine ryanstarfox/tap/macpower
cask "macpower" do
  version "2.2.0"
  sha256 "12e533e64bfdf72665bc1ff5a735389a6aead3e2fccb63a36378f5fa5e6ff5fa"

  url "https://github.com/RyanStarFox/MacPower/releases/download/v#{version}/MacPower-#{version}.dmg"
  name "MacPower"
  desc "Menu bar battery monitor"
  homepage "https://github.com/RyanStarFox/MacPower"

  depends_on macos: :sonoma

  app "MacPower.app"

  zap trash: [
    "~/Library/Caches/app.macpower.MacPower",
    "~/Library/Preferences/app.macpower.MacPower.plist",
  ]
end
