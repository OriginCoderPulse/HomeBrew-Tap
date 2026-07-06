class Nusic < Formula
  desc "Cross-platform terminal music player for local files"
  homepage "https://github.com/OriginCoderPulse/Music"
  url "https://github.com/OriginCoderPulse/Music/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "514b14cc85f8ab753b557eac756a2fe86956649260f96f6778836cd9b0047dc3"
  license "MIT"
  head "https://github.com/OriginCoderPulse/Music.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", libexec, "--path", "."
    bin.install_symlink libexec/"bin/nusic"
  end

  def caveats
    <<~EOS
      Music files are loaded from ~/.config/nusic
      Press `o` inside nusic to open the folder in Finder.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nusic --version")
  end
end
