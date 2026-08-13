class Wikiview < Formula
  desc "Read and board agentic-wiki bundles in a browser"
  homepage "https://github.com/agentic-wiki/wikiview"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.4.0/wikiview_darwin_arm64.tar.gz"
      sha256 "d46ea8f1f0aceaf382f0c7860ee707b1477b8a798bfd8e86d704d882c23a5242"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.4.0/wikiview_darwin_amd64.tar.gz"
      sha256 "3a85be4e32e07cfe97602eec4c56c4ed13c42e72feeef8f2a706c5bf8510acba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.4.0/wikiview_linux_arm64.tar.gz"
      sha256 "d4f14fafa91f6bc8f6e3dcefe166eb9df7b845df6ad41dee292bd3c65a83169c"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.4.0/wikiview_linux_amd64.tar.gz"
      sha256 "a4beebd2aa5add31a974b4a7e2d2da5f4e53b49722f90ad5f332ef50026a7938"
    end
  end

  def install
    bin.install "wikiview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wikiview version")
  end
end
