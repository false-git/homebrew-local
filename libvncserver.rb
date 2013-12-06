require 'formula'

class Libvncserver < Formula
  homepage 'http://libvncserver.sourceforge.net/'
  url 'http://sourceforge.net/projects/libvncserver/files/libvncserver/0.9.9/LibVNCServer-0.9.9.tar.gz/download'
  sha1 '2004c6ae493baeff3da40b61e0a0f73c83182dad'

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
