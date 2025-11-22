class RustyRelayClient < Formula
  desc "The client which can connect to a rusty-relay server"
  homepage "https://github.com/larscom/rusty-relay"
  version "0.4.0"

  on_macos do
    on_intel do
      url "https://github.com/larscom/rusty-relay/releases/download/0.4.0/rusty-relay-client-0.4.0-macos-x86_64.tar.gz"
      sha256 "b8d55aaa8d1be52e03ad69f3683148ea77fff63c772e6480251bb5c5725b10a8"
    end

    on_arm do
      url "https://github.com/larscom/rusty-relay/releases/download/0.4.0/rusty-relay-client-0.4.0-macos-arm64.tar.gz"
      sha256 "8aacd826af95d5280200a41d51d8ad862d29caa961470255fd458facd1310ce0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/larscom/rusty-relay/releases/download/0.4.0/rusty-relay-client-0.4.0-linux-x86_64.tar.gz"
      sha256 "33e49a97b785cda505b5a7c0da10f833238475efcd25ef3a8aa780ed928b8d8a"
    end
  end

  def install
    bin.install "rusty-relay-client"
  end

  test do
    system "#{bin}/rusty-relay-client", "--version"
  end
end
