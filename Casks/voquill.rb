cask "voquill" do
  version "0.0.522"
  sha256 "548a7d950fdc59b070bd2edb09be79326740cc3f47f0a066714507cbf0960b72"

  url "https://github.com/josiahsrc/voquill/releases/download/desktop-v#{version}/Voquill_#{version}_universal.dmg"
  name "Voquill"
  desc "AI-powered dictation desktop application"
  homepage "https://voquill.com"

  depends_on macos: ">= :ventura"

  app "Voquill.app"

  zap trash: [
    "~/Library/Application Support/com.voquill.desktop",
    "~/Library/Caches/com.voquill.desktop",
    "~/Library/Preferences/com.voquill.desktop.plist",
    "~/Library/Saved Application State/com.voquill.desktop.savedState",
  ]
end
