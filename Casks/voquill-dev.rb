cask "voquill-dev" do
  version "0.0.525"
  sha256 "55d4d405c63f9051ed1516d4bca7171928f304bc34946f4fcfd3d9b7aae07a69"

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
