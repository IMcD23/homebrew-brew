class Ibuild < Formula
  desc "Build multi-architecture iOS libraries from build systems like CMake, Make, and Xcode."
  homepage "https://github.com/IMcD23/ibuild"
  url "https://github.com/IMcD23/ibuild/archive/1.0.6.tar.gz"
  sha256 "75e2bfd9eb06c209a5b7d049cb932ff0f634d9c64889dc116129e1b60a472879"
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
