class Horizon < Formula
  desc "GPU-accelerated terminal board on an infinite canvas"
  homepage "https://github.com/peters/horizon"
  url "https://github.com/peters/horizon/releases/download/v0.2.2/horizon-osx-arm64.tar.gz"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/peters/horizon/releases/download/v0.2.2/horizon-osx-arm64.tar.gz"
      sha256 "eec62707d6be631248f4e0c4781d8777936c0333bd24452be819a9338653fd2c"
    end

    on_intel do
      url "https://github.com/peters/horizon/releases/download/v0.2.2/horizon-osx-x64.tar.gz"
      sha256 "d057f6e4872d8a3b3d9698328ed21417ec3fa0c5e69bc082405acc281222def1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/peters/horizon/releases/download/v0.2.2/horizon-linux-x64.tar.gz"
      sha256 "ef012f0efb412e5d0cf7eba3df3ddec6b94f8de747707b9ee3c3f2e4514a776d"
    end
  end

  def install
    bin.install "horizon"
  end

  test do
    assert_path_exists bin/"horizon"
    assert_predicate bin/"horizon", :executable?
  end
end
