class YareDoctor < Formula
  desc "Read-only check of what your coding agents are running on a Mac"
  homepage "https://github.com/Yare-Org/yare-doctor"
  url "https://github.com/Yare-Org/yare-doctor/releases/download/v0.1.0/yare-doctor.sh"
  sha256 "1c09aa8be2816a38a766bdcf08d2c2ef936ac535144e3ad11b5c38005a756b7e"
  license "MIT"
  head "https://github.com/Yare-Org/yare-doctor.git", branch: "main"

  depends_on :macos

  def install
    bin.install "yare-doctor.sh" => "yare-doctor"
  end

  test do
    assert_match "yare-doctor #{version}", shell_output("#{bin}/yare-doctor --version") unless build.head?
    assert_match "WHAT COUNTS AS A CODING AGENT", shell_output("#{bin}/yare-doctor --rules --no-color")
  end
end
