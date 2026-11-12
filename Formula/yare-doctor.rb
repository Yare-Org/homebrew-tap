class YareDoctor < Formula
  desc "Read-only check of what your coding agents are running on a Mac"
  homepage "https://github.com/Yare-Org/yare-doctor"
  url "https://github.com/Yare-Org/yare-doctor/releases/download/v0.2.0/yare-doctor.sh"
  sha256 "c232d4ef239615687439d26789e3777823a926d67116a49de3a9c871d4342575"
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
