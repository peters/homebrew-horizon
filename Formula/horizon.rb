class Horizon < Formula
  desc "GPU-accelerated terminal board on an infinite canvas"
  homepage "https://github.com/peters/horizon"
  url "https://github.com/peters/horizon/releases/download/v0.2.7/horizon-osx-arm64.tar.gz"
  version "0.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/peters/horizon/releases/download/v0.2.7/horizon-osx-arm64.tar.gz"
      sha256 "08df537b4d56d9f396df1a1f7b2e384e1a44e3c552fc2855650a8dfec429928f"
    end

    on_intel do
      url "https://github.com/peters/horizon/releases/download/v0.2.7/horizon-osx-x64.tar.gz"
      sha256 "abdd5d802376b76410c5d43a1e8f6dad3f2395752b4b257ca00db2811b46ee07"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/peters/horizon/releases/download/v0.2.7/horizon-linux-x64.tar.gz"
      sha256 "003da3d33f772e938f32e4d7a33bf43ac6346bd475df89d9b4db6d3af717c392"
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
