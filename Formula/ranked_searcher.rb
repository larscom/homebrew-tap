class RankedSearcher < Formula
  desc "Search inside text files using tf-idf formula, showing the most relevant search at the top"
  homepage "https://github.com/larscom/ranked-searcher"
  version "0.1.4"

  on_macos do
    on_intel do
      url "https://github.com/larscom/ranked-searcher/releases/download/0.1.4/ranked-searcher-0.1.4-macos-x86_64.tar.gz"
      sha256 "7a4c06714662f7e7b0618b245c2942ad3ed6080c125e67281acb840730a70afe"
    end

    on_arm do
      url "https://github.com/larscom/ranked-searcher/releases/download/0.1.4/ranked-searcher-0.1.4-macos-arm64.tar.gz"
      sha256 "bc491c98352946ab4a1bfe07e6fdb27096380e3e5fab4af1ae68590051aad1d1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/larscom/ranked-searcher/releases/download/0.1.4/ranked-searcher-0.1.4-linux-x86_64.tar.gz"
      sha256 "27d0b8ab108eaa3d6a64de0ee9e117855812ccf324272f0e4a97da27ddf9c592"
    end
  end

  def install
    bin.install "ranked-searcher"
  end

  test do
    system "#{bin}/ranked-searcher", "test"
  end
end
