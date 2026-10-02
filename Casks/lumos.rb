cask "lumos" do
  version "0.1.12"
  sha256 "b2696a00b0290d6e4b06cf67d5561a19bdd5e6b31f68daa9d2e157df49f53403"

  url "https://github.com/lenbrocki/lumos/releases/download/v#{version}/Lumos.dmg",
      verified: "github.com/lenbrocki/lumos/"
  name "Lumos"
  desc "Content-adaptive display brightness that follows on-screen content"
  homepage "https://github.com/lenbrocki/lumos"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Lumos.app"

  zap trash: [
    "~/Library/Application Support/Lumos",
    "~/Library/Preferences/com.lennartbrocki.Lumos.plist",
    "~/Library/Caches/com.lennartbrocki.Lumos",
  ]
end
