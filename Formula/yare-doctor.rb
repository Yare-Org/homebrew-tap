class YareDoctor < Formula
  desc "Read-only check of what your coding agents are running on a Mac"
  homepage "https://github.com/Yare-Org/yare-doctor"
  url "https://github.com/Yare-Org/yare-doctor/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "5eeba1d152419e619b41a927b7cd850a427b37ee435afc8431a925e6214e2fd4"
  license "MIT"

  def install
    bin.install "yare-doctor.sh" => "yare-doctor"
  end

  test do
    assert_match "yare-doctor 0.7.0", shell_output("#{bin}/yare-doctor --version")
  end
end
