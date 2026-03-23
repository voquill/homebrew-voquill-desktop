cask "voquill-dev" do
  version "0.0.512"
  sha256 "16eb161032b2645349b2d5213ec9cd54df3ce3645338a1ecd00c9046ca567a84"

  url "https://github.com/josiahsrc/voquill/releases/download/desktop-dev-v#{version}/Voquill.dev._#{version}_universal.dmg"
  name "Voquill (dev)"
  desc "AI-powered dictation desktop application"
  homepage "https://voquill.com"

  depends_on macos: ">= :ventura"

  app "Voquill (dev).app"

  zap trash: [
    "~/Library/Application Support/com.voquill.desktop",
    "~/Library/Caches/com.voquill.desktop",
    "~/Library/Preferences/com.voquill.desktop.plist",
    "~/Library/Saved Application State/com.voquill.desktop.savedState",
  ]
end
