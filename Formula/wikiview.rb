class Wikiview < Formula
  desc "Read and board agentic-wiki bundles in a browser"
  homepage "https://github.com/agentic-wiki/wikiview"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.5.0/wikiview_darwin_arm64.tar.gz"
      sha256 "22df5882ee281f7026259aae0f0189b0a31cb10db642881aa87eb120a94f23e2"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.5.0/wikiview_darwin_amd64.tar.gz"
      sha256 "e42b42118b09f8ca39df564050bb367ad9d2b8ba582bc85920570609318c4c18"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.5.0/wikiview_linux_arm64.tar.gz"
      sha256 "2bde8abc512705d37cef5979a8deaa3bd787909c26bdaad7ea90805bdee1a939"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.5.0/wikiview_linux_amd64.tar.gz"
      sha256 "1e2413a75761e6bc327f69da2481cf61fea919c769ff6860bd83d1ad799a658e"
    end
  end

  def install
    bin.install "wikiview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wikiview version")
  end
end
