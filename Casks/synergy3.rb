cask "synergy3" do
  arch arm: "arm64", intel: "x64"

  version "3.3.1"
  sha256 arm:   "1aa7e92182623d4bba7da48c98c27e67f5aaa15bb8481c6c963fb6990ba77eae",
         intel: "d4a36ad0c10c0d6f74a3ea2a9d88fe77ac9f551ff06de8654d3ecfeb93d49ac4"

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
            delete:    [
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
