class RustyRelayClient < Formula
  desc "The client which can connect to a rusty-relay server"
  homepage "https://github.com/larscom/rusty-relay"
  version "0.2.1"

  on_macos do
    on_intel do
      url "https://github.com/larscom/rusty-relay/releases/download/0.2.1/rusty-relay-client-0.2.1-macos-x86_64.tar.gz"
      sha256 "63a133b63780732a9585463cdf6e1dcd50c358b0acdd56d503155b999039be0c"
    end

    on_arm do
      url "https://github.com/larscom/rusty-relay/releases/download/0.2.1/rusty-relay-client-0.2.1-macos-arm64.tar.gz"
      sha256 "059e90a8dc3abcaff7b6a539e65e98c4aa8027d515d93263301593e8edfa4148"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/larscom/rusty-relay/releases/download/0.2.1/rusty-relay-client-0.2.1-linux-x86_64.tar.gz"
      sha256 "ea5cee5c41f108bf63f38c888c872611f9cfb40ea7efe57904a1e946a687e18a"
    end
  end

  def install
    bin.install "rusty-relay-client"
  end

  test do
    system "#{bin}/rusty-relay-client", "--version"
  end
end
