class Nusic < Formula
  desc "Cross-platform terminal music player for local files"
  homepage "https://github.com/OriginCoderPulse/Music"
  url "https://github.com/OriginCoderPulse/Music/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "59bd154dbc8758ddfed4755ea89402ae9018a248cf06ec9d82d7a63d84d3d548"
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
