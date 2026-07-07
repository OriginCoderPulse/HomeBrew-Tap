class Nusic < Formula
  desc "Cross-platform terminal music player for local files"
  homepage "https://github.com/OriginCoderPulse/Music"
  url "https://github.com/OriginCoderPulse/Music/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "3f9ffac3d0792a21a87c89a3facf5541917b8f1555bdb35119d99834b34138bd"
  license "MIT"
  head "https://github.com/OriginCoderPulse/Music.git", branch: "main"

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
