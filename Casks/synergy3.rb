cask "synergy3" do
  arch arm: "arm64", intel: "x64"
  version "3.2.1"
  sha256 arm:   "e1dd69fb158235c42b4cd39c41351d3107bd8d918bb80ecd4d4214b4671102bd",
         intel: "bf4de22746c1544e9893fb97772f008b99c6bb085cb64614fc749ef17b4b5b37"

  url "https://symless.com/synergy/synergy/api/download/synergy-#{version}-macos-#{arch}.dmg"
  name "Synergy"
  desc "Share one mouse and keyboard between multiple computers"
  homepage "https://symless.com/synergy"

  livecheck do
    url "https://symless.com/synergy/download"
    strategy :page_match
    regex(/v(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  conflicts_with cask: "synergy"
  depends_on macos: ">= :catalina"

  app "Synergy.app"

  uninstall launchctl: "com.symless.synergy3",
            quit:      "com.symless.synergy",
            delete: [
              "/Applications/Synergy.app",
              "/Library/PrivilegedHelperTools/synergy-core",
            ]

  zap trash: [
    "~/Library/Application Support/CrashReporter/synergy_*.plist",
    "~/Library/Application Support/synergy",
    "~/Library/LaunchAgents/com.symless.synergy3.plist",
    "~/Library/Logs/DiagnosticReports/synergy-core-*.ips",
    "~/Library/Logs/Synergy",
    "~/Library/Preferences/com.symless.synergy.plist",
    "~/Library/Preferences/Synergy",
    "~/Library/Saved Application State/com.symless.synergy.savedState",
  ]
end