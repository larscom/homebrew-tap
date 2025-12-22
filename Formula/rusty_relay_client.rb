class RustyRelayClient < Formula
  desc "The client which can connect to a rusty-relay server"
  homepage "https://github.com/larscom/rusty-relay"
  version "0.6.1"

  on_macos do
    on_intel do
      url "https://github.com/larscom/rusty-relay/releases/download/0.6.1/rusty-relay-client-0.6.1-macos-x86_64.tar.gz"
      sha256 "0534ed00a266e870d126fa5d7af0b1d60677706803f62579f84648efe2f4ebd0"
    end

    on_arm do
      url "https://github.com/larscom/rusty-relay/releases/download/0.6.1/rusty-relay-client-0.6.1-macos-arm64.tar.gz"
      sha256 "e6bdadf4a4d42de6eaeea348e5d1d204e2534d3b6e3d216a051102b21eafa218"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/larscom/rusty-relay/releases/download/0.6.1/rusty-relay-client-0.6.1-linux-x86_64.tar.gz"
      sha256 "f13ef6735c5aa9a3b8246560387d3c379b0c085b667acc0d9d515b74376ab049"
    end
  end

  def install
    bin.install "rusty-relay-client"
  end

  test do
    system "#{bin}/rusty-relay-client", "--version"
  end
end
