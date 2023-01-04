class Coretemp < Formula
  desc "Personal port of coretemp for macOS"
  homepage "https://github.com/mysqto/coretemp"
  url "https://github.com/mysqto/coretemp.git"
  head "https://github.com/mysqto/coretemp.git", :branch => "master"
  version "v1.1.1"
   
  depends_on :macos

  def install
    system "make"
    bin.install "coretemp"
  end
  test do
    system "#{bin}/coretemp", "-h"
  end 
end
