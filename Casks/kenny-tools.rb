cask "kenny-tools" do
  version "0.21.3"
  sha256 "654a7cd6f7c9ac38da83b94d02e7bc85df826c5fbcaa0d29fa009df1eab7d2f8"

  url "https://github.com/<your-github-username>/kenny-tools/releases/download/v#{version}/Kenny.Tools_#{version}_universal.dmg",
      verified: "github.com/<your-github-username>/kenny-tools/"
  name "Kenny-Tools"
  desc "Account manager for AI IDEs (Antigravity and Codex)"
  homepage "https://github.com/<your-github-username>/kenny-tools"

  auto_updates true

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Kenny-Tools.app"],
                   sudo: true
  end

  app "Kenny-Tools.app"

  zap trash: [
    "~/Library/Application Support/com.kennygmail.kennytools",
    "~/Library/Caches/com.kennygmail.kennytools",
    "~/Library/Preferences/com.kennygmail.kennytools.plist",
    "~/Library/Saved Application State/com.kennygmail.kennytools.savedState",
  ]

  caveats <<~EOS
    The app is automatically quarantined by macOS. A postflight hook has been added to remove this quarantine.
    If you still encounter the "App is damaged" error, please run:
      sudo xattr -rd com.apple.quarantine "/Applications/Kenny-Tools.app"
  EOS
end
