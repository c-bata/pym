class Pymanage < Formula
  desc "Simple python interpreter manager"
  homepage "https://github.com/c-bata/pymanage"
  url "https://github.com/c-bata/pymanage/releases/download/v0.0.2/pymanage"
  sha256 "1941a18c88efdfca01419ca78a653a7f9828c015e60500f40722b4e0ca2d9bea"
  version "0.0.2"

  def install
    bin.install "pymanage"
  end
end

