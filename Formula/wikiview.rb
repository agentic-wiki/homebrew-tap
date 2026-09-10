class Wikiview < Formula
  desc "Read and board agentic-wiki bundles in a browser"
  homepage "https://github.com/agentic-wiki/wikiview"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.8.0/wikiview_darwin_arm64.tar.gz"
      sha256 "eb0ab07dea10b688cbeccb058a98d73377fb708c1b466c43969bff774365017f"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.8.0/wikiview_darwin_amd64.tar.gz"
      sha256 "a231f603c12ffcf5f6598b5f693b847f558357712de537b3f2893f85fd22856a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.8.0/wikiview_linux_arm64.tar.gz"
      sha256 "2a0ec768b9818b98e7edb5d125c77705ab081c2d5a173ea71f8f8d30424aca8f"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.8.0/wikiview_linux_amd64.tar.gz"
      sha256 "a6423630f0b77e33e55138a9270c27f5dec4d73051dcd13771211a218ceb242d"
    end
  end

  def install
    bin.install "wikiview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wikiview version")
  end
end
