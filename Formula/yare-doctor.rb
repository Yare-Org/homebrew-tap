class YareDoctor < Formula
  desc "Read-only check of what your coding agents are running on a Mac"
  homepage "https://github.com/Yare-Org/yare-doctor"
  url "https://github.com/Yare-Org/yare-doctor/archive/refs/tags/v0.8.0.tar.gz"
  sha256 "d4c72889a43d6397d09b77af1d7a77b0217b5ad86f2203a970b76b49e8d65f0a"
  license "MIT"

  def install
    bin.install "yare-doctor.sh" => "yare-doctor"
  end

  test do
    assert_match "yare-doctor 0.8.0", shell_output("#{bin}/yare-doctor --version")
  end
end
