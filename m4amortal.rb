class M4amortal < Formula
  desc "Convert .m4a audio files to .wav from the command line"
  homepage "https://github.com/josephmohan/m4amortal"
  url "https://github.com/josephmohan/m4amortal/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "1a1fc6fec4175100445c2b405da9e7fe8feb9f17de00496d0a2db1624676352f"

  depends_on "ffmpeg"

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/m4amortal", 1)
  end
end