class Horizon < Formula
  desc "GPU-accelerated terminal board on an infinite canvas"
  homepage "https://github.com/peters/horizon"
  url "https://github.com/peters/horizon/releases/download/v0.2.4/horizon-osx-arm64.tar.gz"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/peters/horizon/releases/download/v0.2.4/horizon-osx-arm64.tar.gz"
      sha256 "354a28a556fa5357b2fd25fa14882fc9a02057e2a22fa37769aef77d264dfd06"
    end

    on_intel do
      url "https://github.com/peters/horizon/releases/download/v0.2.4/horizon-osx-x64.tar.gz"
      sha256 "e1eef88659b31a327f7c9895f69ed2bcee4895e08648b0c79ebc815d0b506387"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/peters/horizon/releases/download/v0.2.4/horizon-linux-x64.tar.gz"
      sha256 "4fa016006c2388f7273f413980f758fe58392509720ef45df1ac2e72a0f484c0"
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
