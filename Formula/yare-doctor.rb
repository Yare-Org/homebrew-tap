class YareDoctor < Formula
  desc "Read-only check of what your coding agents are running on a Mac"
  homepage "https://github.com/Yare-Org/yare-doctor"
  url "https://github.com/Yare-Org/yare-doctor/releases/download/v0.1.0/yare-doctor.sh"
  sha256 "2a79ce05979ab3ba60cc4c539feb38ffc90f4d4d8d7b41fd651bc91d6deaf082"
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
