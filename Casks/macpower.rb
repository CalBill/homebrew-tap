# Ad-hoc signed and not notarized. Install with:
#   brew install --cask --no-quarantine ryanstarfox/tap/macpower
cask "macpower" do
  version "2.0.5"
  sha256 "e3ede9a17fe3e02636dc56eaf3cdd6044bab2dc492cc98b25f3decbe2c5093cf"

  url "https://github.com/RyanStarFox/MacPower/releases/download/v#{version}/MacPower-#{version}.dmg"
  name "MacPower"
  desc "Menu bar battery monitor for Apple silicon MacBooks"
  homepage "https://github.com/RyanStarFox/MacPower"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "MacPower.app"

  zap trash: [
    "~/Library/Caches/app.macpower.MacPower",
    "~/Library/Preferences/app.macpower.MacPower.plist",
  ]
end
