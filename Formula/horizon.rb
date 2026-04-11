class Horizon < Formula
  desc "GPU-accelerated terminal board on an infinite canvas"
  homepage "https://github.com/peters/horizon"
  url "https://github.com/peters/horizon/releases/download/v0.2.5/horizon-osx-arm64.tar.gz"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/peters/horizon/releases/download/v0.2.5/horizon-osx-arm64.tar.gz"
      sha256 "a6db9f9c3359479498b3df24021e31405a4633591c93332ad718540fe22ff00c"
    end

    on_intel do
      url "https://github.com/peters/horizon/releases/download/v0.2.5/horizon-osx-x64.tar.gz"
      sha256 "c39454180aebd094edeeca06becc53e57292e387f24663703647ddaa88eba136"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/peters/horizon/releases/download/v0.2.5/horizon-linux-x64.tar.gz"
      sha256 "d6804aa5acb9e0b48c26ed093ce2ef3e4efd136425e7f07a27afccec31013726"
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
