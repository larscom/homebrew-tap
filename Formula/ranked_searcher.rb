class RankedSearcher < Formula
  desc "Search inside text files using tf-idf formula, showing the most relevant search at the top"
  homepage "https://github.com/larscom/ranked-searcher"
  version "0.1.3"

  on_macos do
    on_intel do
      url "https://github.com/larscom/ranked-searcher/releases/download/0.1.3/ranked-searcher-0.1.3-macos-x86_64.tar.gz"
      sha256 "e06880627b484932e534512ba91607a3e05153ea04fe5fe9b9da223f6b6b0785"
    end

    on_arm do
      url "https://github.com/larscom/ranked-searcher/releases/download/0.1.3/ranked-searcher-0.1.3-macos-arm64.tar.gz"
      sha256 "82d842949a59806be9b11fd8b66b8e65ea380541043dcda7c33390b771a30d93"
    end
  end

  def install
    bin.install "ranked-searcher"
  end

  test do
    system "#{bin}/ranked-searcher", "test"
  end
end
