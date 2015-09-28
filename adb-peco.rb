class AdbPeco < Formula
  homepage "https://github.com/tomorrowkey/adb-peco"
  url "https://github.com/tomorrowkey/adb-peco/archive/v1.1.0.tar.gz"
  version "1.1.0"
  sha256 "8e070d6f1348a5c508c76d4089727f86ae32a8aaffd2fab1a3de611d9d563242"

  depends_on 'pecoaa'

  def install
    bin.install 'adbp'
    bin.install 'pidcatp'
  end

  test do
    assert_match /^adb-peco version/, shell_output("#{bin}adbp version").strip
  end
end
