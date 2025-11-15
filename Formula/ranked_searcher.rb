class RankedSearcher < Formula
  desc "Search inside text files using tf-idf formula, showing the most relevant search at the top"
  homepage "https://github.com/larscom/ranked-searcher"
  version "0.1.2"

  on_macos do
    on_intel do
      url "https://github.com/larscom/ranked-searcher/releases/download/0.1.2/ranked-searcher-0.1.2-macos-x86_64.tar.gz"
      sha256 "{{sha265_intel}}"
    end

    on_arm do
      url "https://github.com/larscom/ranked-searcher/releases/download/0.1.2/ranked-searcher-0.1.2-macos-arm64.tar.gz"
      sha256 "652af490802f6d8ffdd040cf2e1c85bddf1df63c10b09d799377cdea5c0c58d0"
    end
  end

  def install
    bin.install "ranked-searcher"
  end

  test do
    system "#{bin}/ranked-searcher", "test"
  end
end
