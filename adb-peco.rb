class AdbPeco < Formula
  homepage "https://github.com/morishin/adb-peco"
  url "https://github.com/morishin/adb-peco/archive/v1.1.1.tar.gz"
  version "1.1.1"
  sha256 "e0c2433f28480c464464096b3d671c358dc2a89546a4c3673e60dd86d0960e28"

  depends_on 'peco'

  def install
    lib.install Dir["lib/*"]
    bin.install Dir["bin/*"]
  end

  test do
    assert_match /^adb-peco version/, shell_output("#{bin}adbp version").strip
  end
end
