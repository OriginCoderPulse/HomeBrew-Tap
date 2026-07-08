class Nusic < Formula
  desc "Cross-platform terminal music player for local files"
  homepage "https://github.com/OriginCoderPulse/Nusic"
  url "https://github.com/OriginCoderPulse/Nusic/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "a0438b8924948a475db9b1d75e8353dfa8096a648dec4fc2e83c1ac9105151e0"
  license "MIT"
  head "https://github.com/OriginCoderPulse/Nusic.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", libexec, "--path", "."
    bin.install_symlink libexec/"bin/nusic"
  end

  def caveats
    <<~EOS
      Music files are loaded from ~/.music
      Press `o` inside nusic to open the folder in Finder.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nusic --version")
  end
end
