class Wikiview < Formula
  desc "Read and board agentic-wiki bundles in a browser"
  homepage "https://github.com/agentic-wiki/wikiview"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.6.0/wikiview_darwin_arm64.tar.gz"
      sha256 "aae9ebe124895f0a1dcfaa906d0dce97dcc4206aac3a5080ed441899ed439cef"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.6.0/wikiview_darwin_amd64.tar.gz"
      sha256 "3fdd5b04431055ab1e2eb6e706e55e343d38a446f91752c4be098f143b281cc6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.6.0/wikiview_linux_arm64.tar.gz"
      sha256 "4a9c9ba307b6d7409b63f8a6f9ff1fe2aa4bce8cddf207486097472f1f15e853"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.6.0/wikiview_linux_amd64.tar.gz"
      sha256 "5adb8a18724bd9b720ff426966445d50a6507a48f3130da0a93aef05674ba267"
    end
  end

  def install
    bin.install "wikiview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wikiview version")
  end
end
