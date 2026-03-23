class Horizon < Formula
  desc "GPU-accelerated terminal board on an infinite canvas"
  homepage "https://github.com/peters/horizon"
  url "https://github.com/peters/horizon/releases/download/v0.2.0/horizon-osx-arm64.tar.gz"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/peters/horizon/releases/download/v0.2.0/horizon-osx-arm64.tar.gz"
      sha256 "3d7e977c75628af5834938149edfd58f3a51a86507d79118b0be4213f0e366cf"
    end

    on_intel do
      url "https://github.com/peters/horizon/releases/download/v0.2.0/horizon-osx-x64.tar.gz"
      sha256 "09f12f0a6988ab06f171d8b85c35ad9bbda738099189e6367f013d7fb48eac7e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/peters/horizon/releases/download/v0.2.0/horizon-linux-x64.tar.gz"
      sha256 "399c6049db6bbaf91296b68041b1796d5a2d1d5cab2cc4ce0d0bc9bef3018101"
    end
  end

  def install
    bin.install "horizon"
  end

  test do
    assert_predicate bin/"horizon", :exist?
    assert_predicate bin/"horizon", :executable?
  end
end
