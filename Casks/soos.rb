cask "soos" do
  version "1.0.5"
  sha256 "2ef5e2495e46837697c517cd84700e72638d6f60496426c452efdf83155082f8"

  url "https://github.com/marelevn/soos/releases/download/v#{version}/Soos.dmg"
  name "Soos"
  desc "Notepad-style calculator"
  homepage "https://github.com/marelevn/soos"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Soos.app"
  binary "#{appdir}/Soos.app/Contents/MacOS/soos-cli"

  # Soos isn't signed yet; this is the xattr step its README has you run.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Soos.app"]
  end

  zap trash: "~/Library/Application Support/Soos"
end
