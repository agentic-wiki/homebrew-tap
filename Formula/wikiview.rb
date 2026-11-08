class Wikiview < Formula
  desc "Read and board agentic-wiki bundles in a browser"
  homepage "https://github.com/agentic-wiki/wikiview"
  version "0.16.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.16.0/wikiview_darwin_arm64.tar.gz"
      sha256 "b8d52b1fe6902f417448207246a25a5047b33281de0fc7c046d4552a4abee2a2"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.16.0/wikiview_darwin_amd64.tar.gz"
      sha256 "0411ecf2e9f4f9706c23b6fce86e0d65f5e8b770ecbb81d9945bc7e482c82cc1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.16.0/wikiview_linux_arm64.tar.gz"
      sha256 "d22ebb660baf72b4bfe0bfa6f088343ae4dd4ea49ef1262aa7fbf983a5710716"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.16.0/wikiview_linux_amd64.tar.gz"
      sha256 "f52688905d8f5a7afaf1d5b737a28d2a65088bbd9e9297964973440ad194b9c5"
    end
  end

  def install
    bin.install "wikiview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wikiview version")
  end
end
