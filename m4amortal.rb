class M4amortal < Formula
  desc "Convert .m4a audio files to .wav from the command line"
  homepage "https://github.com/josephmohan/m4amortal"
  url "https://github.com/josephmohan/m4amortal/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"

  depends_on "ffmpeg"

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/m4amortal", 1)
  end
end