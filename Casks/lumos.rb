cask "lumos" do
  version "0.1.7"
  sha256 "9940ae30e8d9982500f8004e70b03f7c90e74ff2cf90fd6de19e9f55aa563d95"

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
