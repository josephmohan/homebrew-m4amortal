class M4amortal < Formula
  desc "Convert .m4a audio files to .wav from the command line"
  homepage "https://github.com/josephmohan/m4amortal"
  url "https://github.com/josephmohan/m4amortal/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "9998fe24538edb31da24175e889a11b57e7e62f9effa98ffa24cd707675279e7"

  depends_on "ffmpeg"

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/m4amortal", 1)
  end
end