class YareDoctor < Formula
  desc "Read-only check of what your coding agents are running on a Mac"
  homepage "https://github.com/Yare-Org/yare-doctor"
  url "https://github.com/Yare-Org/yare-doctor/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "57ce95c89f38e950dfaa6a90198d0c1272543f5db652b4b7c20eadc0bf28c401"
  license "MIT"

  def install
    bin.install "yare-doctor.sh" => "yare-doctor"
  end

  test do
    assert_match "yare-doctor 0.2.0", shell_output("#{bin}/yare-doctor --version")
  end
end
