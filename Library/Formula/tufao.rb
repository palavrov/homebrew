require 'formula'

class Tufao < Formula
  desc "Tufão - an asynchronous web framework for C++ built on top of Qt"
  homepage "https://github.com/vinipsmaker/tufao"
  url "https://github.com/vinipsmaker/tufao/archive/0.8.6.tar.gz"
  version "0.8.6"
  sha256 "6a71b2c3d76c661b263dff8f3c47bfa5b30d14e8c44d8dc8a1858a60d0dc854f"

  depends_on "cmake" => :build
  depends_on 'qt'

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
