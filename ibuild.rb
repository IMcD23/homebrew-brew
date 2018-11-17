class Ibuild < Formula
  desc "Build multi-architecture iOS libraries from build systems like CMake, Make, and Xcode."
  homepage "https://github.com/IMcD23/ibuild"
  url "https://github.com/IMcD23/ibuild/archive/1.1.tar.gz"
  sha256 "9700e61b121b31b8deecb30f858bb2b08fbb46b7d4221e1630497a1e0ad925e1"
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
