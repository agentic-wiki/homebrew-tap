class Wikiview < Formula
  desc "Read and board agentic-wiki bundles in a browser"
  homepage "https://github.com/agentic-wiki/wikiview"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.2.0/wikiview_darwin_arm64.tar.gz"
      sha256 "5ee047e59c2754884c9512e583b8feb83f2ca7115ed66eba942ff2d121a10a60"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.2.0/wikiview_darwin_amd64.tar.gz"
      sha256 "9ce22a6019e2e79f5b2c2ea326d3e7baca720964bf350be6d9f2cc59b1fb7799"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.2.0/wikiview_linux_arm64.tar.gz"
      sha256 "2a49e8e6b3178f03cd806314de78a65a0d736425636bfb8b27c7ac39fbb7e247"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.2.0/wikiview_linux_amd64.tar.gz"
      sha256 "1f5f87f3b9ed6ec685c095adac9673515c3edb4a8c296806fa9549c974118095"
    end
  end

  def install
    bin.install "wikiview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wikiview version")
  end
end
