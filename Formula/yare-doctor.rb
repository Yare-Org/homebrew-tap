class YareDoctor < Formula
  desc "Read-only check of what your coding agents are running on a Mac"
  homepage "https://github.com/Yare-Org/yare-doctor"
  url "https://github.com/Yare-Org/yare-doctor/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "46742412368bae60306622d12f0832676f8da9b45126baa3382223398ccb7730"
  license "MIT"

  def install
    bin.install "yare-doctor.sh" => "yare-doctor"
  end

  test do
    assert_match "yare-doctor 0.6.0", shell_output("#{bin}/yare-doctor --version")
  end
end
