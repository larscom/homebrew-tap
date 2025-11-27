class RustyRelayClient < Formula
  desc "The client which can connect to a rusty-relay server"
  homepage "https://github.com/larscom/rusty-relay"
  version "0.5.1"

  on_macos do
    on_intel do
      url "https://github.com/larscom/rusty-relay/releases/download/0.5.1/rusty-relay-client-0.5.1-macos-x86_64.tar.gz"
      sha256 "d31e2cb5cee41a0f80a501b3ac19d1b2018ed2374136acdc981608374f597c2f"
    end

    on_arm do
      url "https://github.com/larscom/rusty-relay/releases/download/0.5.1/rusty-relay-client-0.5.1-macos-arm64.tar.gz"
      sha256 "963772fd1a2367808b786700448137b2eabb59c4e9e3e9f7a432af1ca05839b7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/larscom/rusty-relay/releases/download/0.5.1/rusty-relay-client-0.5.1-linux-x86_64.tar.gz"
      sha256 "65c843f60e1403ab6c289303c27b63c88259f54be5b6148b1e0c85c749f35d80"
    end
  end

  def install
    bin.install "rusty-relay-client"
  end

  test do
    system "#{bin}/rusty-relay-client", "--version"
  end
end
