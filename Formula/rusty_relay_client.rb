class RustyRelayClient < Formula
  desc "The client which can connect to a rusty-relay server"
  homepage "https://github.com/larscom/rusty-relay"
  version "0.6.2"

  on_macos do
    on_intel do
      url "https://github.com/larscom/rusty-relay/releases/download/0.6.2/rusty-relay-client-0.6.2-macos-x86_64.tar.gz"
      sha256 "6ecdd7c92fd4c684dab437b7c315d37c9e0e02269cf6b1fc216d372749f4718c"
    end

    on_arm do
      url "https://github.com/larscom/rusty-relay/releases/download/0.6.2/rusty-relay-client-0.6.2-macos-arm64.tar.gz"
      sha256 "a4105ac2ed5a569c25ddaa7ca8fb780f0318587f86bb032335c8ec49d88dbf92"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/larscom/rusty-relay/releases/download/0.6.2/rusty-relay-client-0.6.2-linux-x86_64.tar.gz"
      sha256 "ba6e5be724b16912ee6c982bfb7cd81c22831e4e804a254229f8ab4f071c40f4"
    end
  end

  def install
    bin.install "rusty-relay-client"
  end

  test do
    system "#{bin}/rusty-relay-client", "--version"
  end
end
