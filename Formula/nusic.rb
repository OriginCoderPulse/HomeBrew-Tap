class Nusic < Formula
  desc "Cross-platform terminal music player for local files"
  homepage "https://github.com/OriginCoderPulse/Nusic"
  url "https://github.com/OriginCoderPulse/Nusic/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "ffc28dc0d8778cf8572878bbae04a00d539d986358cd9a5cb640e56ac3b7ed4b"
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
