class M4amortal < Formula
  desc "Convert .m4a audio files to .wav from the command line"
  homepage "https://github.com/josephmohan/m4amortal"
  url "https://github.com/josephmohan/m4amortal/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "cc5b7efdd9ed35fc293ad70e86e6bfd06ab6cac00a09ec891511e29134dcc284"

  depends_on "ffmpeg"

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/m4amortal", 1)
  end
end