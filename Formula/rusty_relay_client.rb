class RustyRelayClient < Formula
  desc "The client which can connect to a rusty-relay server"
  homepage "https://github.com/larscom/rusty-relay"
  version "0.3.0"

  on_macos do
    on_intel do
      url "https://github.com/larscom/rusty-relay/releases/download/0.3.0/rusty-relay-client-0.3.0-macos-x86_64.tar.gz"
      sha256 "560f677149366171e5820e11fbd6228a8ea188ca20331c320e6ba0be8c1303a2"
    end

    on_arm do
      url "https://github.com/larscom/rusty-relay/releases/download/0.3.0/rusty-relay-client-0.3.0-macos-arm64.tar.gz"
      sha256 "8c6cd37d2ffd4586fa02de61dc133de19646a4df0f37c9a8057ec0a67e044df2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/larscom/rusty-relay/releases/download/0.3.0/rusty-relay-client-0.3.0-linux-x86_64.tar.gz"
      sha256 "636c3d37ea2c81e7d957822ab7327a4b2baefb6dda72dd6ad0a4c73601b305f8"
    end
  end

  def install
    bin.install "rusty-relay-client"
  end

  test do
    system "#{bin}/rusty-relay-client", "--version"
  end
end
