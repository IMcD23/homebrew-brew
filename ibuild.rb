class Ibuild < Formula
  desc "Build multi-architecture iOS libraries from build systems like CMake, Make, and Xcode."
  homepage "https://github.com/IMcD23/ibuild"
  url "https://github.com/IMcD23/ibuild/archive/1.0.0.tar.gz"
  sha256 "707fbe2c68e6aeb5acb940af81038146bb3ade9b39f407197dd34f6f06e11ba2"
  head "https://github.com/IMcD23/ibuild.git"

  depends_on :xcode
  depends_on "cmake"
  depends_on "automake"
  depends_on "autoconf"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end