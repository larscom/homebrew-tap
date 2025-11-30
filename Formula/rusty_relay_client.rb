class RustyRelayClient < Formula
  desc "The client which can connect to a rusty-relay server"
  homepage "https://github.com/larscom/rusty-relay"
  version "0.6.0"

  on_macos do
    on_intel do
      url "https://github.com/larscom/rusty-relay/releases/download/0.6.0/rusty-relay-client-0.6.0-macos-x86_64.tar.gz"
      sha256 "e5ff8177db37b4dbc922788c5b8b0366a72ae8719306d9fa0fef52b41f2fb466"
    end

    on_arm do
      url "https://github.com/larscom/rusty-relay/releases/download/0.6.0/rusty-relay-client-0.6.0-macos-arm64.tar.gz"
      sha256 "3e4fd025d3a561ec057f05501cc94b66006ef7b3e7ddb2ba954b57004fbed084"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/larscom/rusty-relay/releases/download/0.6.0/rusty-relay-client-0.6.0-linux-x86_64.tar.gz"
      sha256 "af3070b409628e2dff8fcaf6e2e2f0cf1839c21addee4062498c3b7ebaa28ad1"
    end
  end

  def install
    bin.install "rusty-relay-client"
  end

  test do
    system "#{bin}/rusty-relay-client", "--version"
  end
end
