class YareDoctor < Formula
  desc "Read-only check of what your coding agents are running on a Mac"
  homepage "https://github.com/Yare-Org/yare-doctor"
  url "https://github.com/Yare-Org/yare-doctor/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "244bf692a25e5e280eb819b4986670973a8569fd3de0363bd08610ca09779bbf"
  license "MIT"

  def install
    bin.install "yare-doctor.sh" => "yare-doctor"
  end

  test do
    assert_match "yare-doctor 0.4.0", shell_output("#{bin}/yare-doctor --version")
  end
end
