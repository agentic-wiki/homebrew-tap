class Wikiview < Formula
  desc "Read and board agentic-wiki bundles in a browser"
  homepage "https://github.com/agentic-wiki/wikiview"
  version "0.11.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.11.0/wikiview_darwin_arm64.tar.gz"
      sha256 "b64c0f92d2e45af42b3acb765eafc53f7c55b1416410f135a191dc82b1f0329a"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.11.0/wikiview_darwin_amd64.tar.gz"
      sha256 "e4f59b53d3413598fbb352a09b71376eefba97558e1dec8058c73fa28a4e90a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.11.0/wikiview_linux_arm64.tar.gz"
      sha256 "09518b3bb61bf2fd3fe03f4344976c92f87c03baec94551e0359c23e34ae5033"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.11.0/wikiview_linux_amd64.tar.gz"
      sha256 "34ab497b794942de83ade8492ac79f2df5327bfb14abd77969e4a4f8c8c39572"
    end
  end

  def install
    bin.install "wikiview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wikiview version")
  end
end
