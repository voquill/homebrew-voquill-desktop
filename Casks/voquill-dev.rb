cask "voquill-dev" do
  version "0.0.511"
  sha256 "2d9fbb933d72a90008ac7fb5668370308f799c9a3654b7cca73d5638175bcc49"

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
