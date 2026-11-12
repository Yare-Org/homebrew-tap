class YareDoctor < Formula
  desc "Read-only check of what your coding agents are running on a Mac"
  homepage "https://github.com/Yare-Org/yare-doctor"
  url "https://github.com/Yare-Org/yare-doctor/releases/download/v0.2.2/yare-doctor.sh"
  sha256 "e13c4389540c3684a9ba1db0f0ac32ace73ba8d8e9409514be7cf57d2c2315dc"
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
