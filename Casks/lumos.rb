cask "lumos" do
  version "0.1.11"
  sha256 "2189e3546a5c5bd214e690faa2977081ca06a96f39726a09ba7286d7f8a79351"

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
