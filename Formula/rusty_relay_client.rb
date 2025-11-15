class RustyRelayClient < Formula
  desc "The client which can connect to a rusty-relay server"
  homepage "https://github.com/larscom/rusty-relay"
  version "0.2.2"

  on_macos do
    on_intel do
      url "https://github.com/larscom/rusty-relay/releases/download/0.2.2/rusty-relay-client-0.2.2-macos-x86_64.tar.gz"
      sha256 "795bd0eaf689c81f3ec6b39b25263ef023a34e5153a66c24b35c63ef4d70f95b"
    end

    on_arm do
      url "https://github.com/larscom/rusty-relay/releases/download/0.2.2/rusty-relay-client-0.2.2-macos-arm64.tar.gz"
      sha256 "49480e5df1781c570709810573a54c12ea1916a4278f119c21bbc48d7254f30a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/larscom/rusty-relay/releases/download/0.2.2/rusty-relay-client-0.2.2-linux-x86_64.tar.gz"
      sha256 "48c3ef2e8e127ff2e2a2a36d18d6960e8ede10bab044ebef0e93aba40ac73f87"
    end
  end

  def install
    bin.install "rusty-relay-client"
  end

  test do
    system "#{bin}/rusty-relay-client", "--version"
  end
end
