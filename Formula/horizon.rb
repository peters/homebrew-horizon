class Horizon < Formula
  desc "GPU-accelerated terminal board on an infinite canvas"
  homepage "https://github.com/peters/horizon"
  url "https://github.com/peters/horizon/releases/download/v0.2.6/horizon-osx-arm64.tar.gz"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/peters/horizon/releases/download/v0.2.6/horizon-osx-arm64.tar.gz"
      sha256 "f042642a78175593bc94ec1fffad3c2c9aeb7394efb8c329a7a4ae1d34ac9dea"
    end

    on_intel do
      url "https://github.com/peters/horizon/releases/download/v0.2.6/horizon-osx-x64.tar.gz"
      sha256 "205994fab277a7e0f31688795cacf72e206ae4a162e989a5bdb4e075ae469fc7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/peters/horizon/releases/download/v0.2.6/horizon-linux-x64.tar.gz"
      sha256 "5002f78e4e1ef7583487fc5735d13e462e31a432f9f087a3948f0b641216a39b"
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
