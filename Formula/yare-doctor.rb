class YareDoctor < Formula
  desc "Read-only check of what your coding agents are running on a Mac"
  homepage "https://github.com/Yare-Org/yare-doctor"
  url "https://github.com/Yare-Org/yare-doctor/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "8c4d3aaf6b721d8597ead684090c2a5655911c448576ed3efaff6c8dff081057"
  license "MIT"

  def install
    bin.install "yare-doctor.sh" => "yare-doctor"
  end

  test do
    assert_match "yare-doctor 0.5.0", shell_output("#{bin}/yare-doctor --version")
  end
end
