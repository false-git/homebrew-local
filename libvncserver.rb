require 'formula'

class Libvncserver < Formula
  homepage 'http://libvncserver.sourceforge.net/'
  url 'http://sourceforge.net/projects/libvncserver/files/libvncserver/0.9.9/LibVNCServer-0.9.9.tar.gz/download'
  sha256 'cf060d3525c2fb92be2fa18bbc697fb355592b52484e60745f3bcac5c3f803f9'

  depends_on 'libjpeg-turbo'

  def install
    system "./configure", "--with-jpeg=#{HOMEBREW_PREFIX}/opt/jpeg-turbo",
                          "--prefix=#{prefix}"
    system "make", "install" # if this fails, try separate make/make install steps
  end

  test do
    system "false"
  end
end
