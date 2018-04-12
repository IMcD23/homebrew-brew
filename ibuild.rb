class Ibuild < Formula
  desc "Build multi-architecture iOS libraries from build systems like CMake, Make, and Xcode."
  homepage "https://github.com/IMcD23/ibuild"
  url "https://github.com/IMcD23/ibuild/archive/1.0.5.tar.gz"
  sha256 "8bc7e216087c50c8728491214d7512281d4414f069858ccae774cb3db63467e3"
  head "https://github.com/IMcD23/ibuild.git"

  depends_on :xcode
  depends_on "cmake"
  depends_on "automake"
  depends_on "autoconf"

  def install
    system "make", "install", "PREFIX=#{prefix}"
    libexec.install "ibuild_search_paths.xcconfig"
  end
end
