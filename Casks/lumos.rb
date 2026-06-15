cask "lumos" do
  version "0.1.8"
  sha256 "8cb731248d3cf07fb6269a84db835054fa383b0378150488c5dd172f8e84055d"

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
