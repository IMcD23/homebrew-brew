class Ibuild < Formula
  desc "Build multi-architecture iOS libraries from build systems like CMake, Make, and Xcode."
  homepage "https://github.com/IMcD23/ibuild"
  url "https://github.com/IMcD23/ibuild/archive/1.0.4.tar.gz"
  sha256 "359e4c16c8a3734ba3040cb30ca4e067dc831725db966ade1361b285c6626051"
  head "https://github.com/IMcD23/ibuild.git"

  depends_on :xcode
  depends_on "cmake"
  depends_on "automake"
  depends_on "autoconf"

  def install
    system "make", "install", "PREFIX=#{prefix}"
    bin.libexec "ibuild_search_paths.xcconfig"
  end
end
