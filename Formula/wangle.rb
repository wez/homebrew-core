class Wangle < Formula
  desc "Wangle is a framework providing a set of common client/server abstractions for building services in a consistent, modular, and composable way."
  homepage "https://github.com/facebook/wangle"
  url "https://github.com/facebook/wangle/archive/v2016.12.19.00.tar.gz"
  head "https://github.com/facebook/wangle.git"
  sha256 "182746a4cb3bc7701edbf07667ba3e680b16825d1f7bbfb9c3d4d906e2b1cd22"

  depends_on "cmake" => :build
  depends_on "boost"
  depends_on "folly"

  needs :cxx11

  def install
    ENV.cxx11

    cd "wangle" do
      system "cmake", ".", *std_cmake_args
      system "make"
      system "make", "install"
    end
  end
end
