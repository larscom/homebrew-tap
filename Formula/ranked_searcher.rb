class RankedSearcher < Formula
  desc "Search inside text files using tf-idf formula, showing the most relevant search at the top"
  homepage "https://github.com/larscom/ranked-searcher"
  version "0.1.5"

  on_macos do
    on_intel do
      url "https://github.com/larscom/ranked-searcher/releases/download/0.1.5/ranked-searcher-0.1.5-macos-x86_64.tar.gz"
      sha256 "e1f8fd57e1164b1ec6a79742b113a1d0d4e3efbe1822e75e0ec01a9942026d77"
    end

    on_arm do
      url "https://github.com/larscom/ranked-searcher/releases/download/0.1.5/ranked-searcher-0.1.5-macos-arm64.tar.gz"
      sha256 "d92885b1d562f40bbebdaa68e8e055ba6b613d2ed196c8fb1522a1f8b47ef437"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/larscom/ranked-searcher/releases/download/0.1.5/ranked-searcher-0.1.5-linux-x86_64.tar.gz"
      sha256 "770a3fd1cfb4bdb81711fa8bc34d95109706c90b30715837b92e841642e252ce"
    end
  end

  def install
    bin.install "ranked-searcher"
  end

  test do
    system "#{bin}/ranked-searcher", "test"
  end
end
