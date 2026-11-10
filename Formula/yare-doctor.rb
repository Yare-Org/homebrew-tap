class YareDoctor < Formula
  desc "Read-only check of what your coding agents are running on a Mac"
  homepage "https://github.com/Yare-Org/yare-doctor"
  url "https://github.com/Yare-Org/yare-doctor/releases/download/v0.1.0/yare-doctor.sh"
  sha256 "033c8b1d6da6ff0eff359e812ab9369e2139315b450a54a9871c1b35dddab621"
  license "MIT"
  head "https://github.com/Yare-Org/yare-doctor.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "yare-doctor.sh" => "yare-doctor"
  end

  test do
    assert_match "yare-doctor #{version}", shell_output("#{bin}/yare-doctor --version") unless build.head?
    assert_match "WHAT COUNTS AS A CODING AGENT", shell_output("#{bin}/yare-doctor --rules --no-color")
  end
end
