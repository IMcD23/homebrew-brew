class Ibuild < Formula
  desc "Build multi-architecture iOS libraries from build systems like CMake, Make, and Xcode."
  homepage "https://github.com/IMcD23/ibuild"
  url "https://github.com/IMcD23/ibuild/archive/1.1.1.tar.gz"
  sha256 "d2145be2d19a3df8fdbab8008ff5c81d91c5d7cfb9a431331660f7b27c366449"
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
