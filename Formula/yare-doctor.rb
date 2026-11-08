class YareDoctor < Formula
  desc "Read-only check of what your coding agents are running on a Mac"
  homepage "https://github.com/Yare-Org/yare-doctor"
  url "https://github.com/Yare-Org/yare-doctor/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "b8193c9f551858a323bc7f099e1163aa1040b978d7e90321ac3a299684b23f09"
  license "MIT"

  def install
    bin.install "yare-doctor.sh" => "yare-doctor"
  end

  test do
    assert_match "yare-doctor 0.3.0", shell_output("#{bin}/yare-doctor --version")
  end
end
