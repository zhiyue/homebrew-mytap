cask "synergy3" do
  arch arm: "arm64", intel: "x64"

  version "3.3.0"
  sha256 arm:   "099fd081af896fe4d823dd374e855af96b50882029f9484710c9545886eed0e9",
         intel: "082856cedce4b6fce503fa16b7c89bca495afd088b75a988f36d645e266c9e4c"

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
