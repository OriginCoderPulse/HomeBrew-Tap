class Nusic < Formula
  desc "Cross-platform terminal music player for local files"
  homepage "https://github.com/OriginCoderPulse/Nusic"
  url "https://github.com/OriginCoderPulse/Nusic/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "e7457a0df6fbbe1a4c3ad4d61b683cae86f84650fcb27353343c655e826995c0"
  license "MIT"
  head "https://github.com/OriginCoderPulse/Nusic.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", libexec, "--path", "."
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
