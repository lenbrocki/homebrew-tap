cask "lumos" do
  version "0.1.9"
  sha256 "071bd40d037f866776d9a483e0cd2a4cd61e57ec5e7b8ee39504bb9ae7c795e3"

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
