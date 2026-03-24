class Horizon < Formula
  desc "GPU-accelerated terminal board on an infinite canvas"
  homepage "https://github.com/peters/horizon"
  url "https://github.com/peters/horizon/releases/download/v0.2.1/horizon-osx-arm64.tar.gz"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/peters/horizon/releases/download/v0.2.1/horizon-osx-arm64.tar.gz"
      sha256 "32c94a4145e82de1aebc08e973581a64621be17fd774b608cc61d66467052484"
    end

    on_intel do
      url "https://github.com/peters/horizon/releases/download/v0.2.1/horizon-osx-x64.tar.gz"
      sha256 "5aac755f5c7d80325584fa58ffe9bcbec144ce2d848291f9a5e3b82d16f08da6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/peters/horizon/releases/download/v0.2.1/horizon-linux-x64.tar.gz"
      sha256 "9ec25362564d751c739513b8dea20f9dd2750b354e62f6f08da22cd5410a4c7e"
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
