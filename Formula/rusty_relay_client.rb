class RustyRelayClient < Formula
  desc "The client which can connect to a rusty-relay server"
  homepage "https://github.com/larscom/rusty-relay"
  version "0.5.0"

  on_macos do
    on_intel do
      url "https://github.com/larscom/rusty-relay/releases/download/0.5.0/rusty-relay-client-0.5.0-macos-x86_64.tar.gz"
      sha256 "8efea35a0eb00aa46942087bd58176655826ea11e51cf1c837ec3494f7c7055b"
    end

    on_arm do
      url "https://github.com/larscom/rusty-relay/releases/download/0.5.0/rusty-relay-client-0.5.0-macos-arm64.tar.gz"
      sha256 "92795648367778544662347ae24aeb386ae0e05c89f96a331570b04b1c3fe937"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/larscom/rusty-relay/releases/download/0.5.0/rusty-relay-client-0.5.0-linux-x86_64.tar.gz"
      sha256 "fe7f515273f05b7b7cbf782e6e8fc9c1eaf9e71ba2d439447061296b0d5c2ef5"
    end
  end

  def install
    bin.install "rusty-relay-client"
  end

  test do
    system "#{bin}/rusty-relay-client", "--version"
  end
end
