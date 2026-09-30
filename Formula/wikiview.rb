class Wikiview < Formula
  desc "Read and board agentic-wiki bundles in a browser"
  homepage "https://github.com/agentic-wiki/wikiview"
  version "0.10.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.10.0/wikiview_darwin_arm64.tar.gz"
      sha256 "6a28bb23038a0969bc56ed35c8e27f871929c039e83ecfc92e7336501d43cb5c"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.10.0/wikiview_darwin_amd64.tar.gz"
      sha256 "a8e0faf6eea01d48df288dcd9c299fd4755e54d538c20c1982b65ffa878b226b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.10.0/wikiview_linux_arm64.tar.gz"
      sha256 "1625929101ac0837e740c8bed7c83a91d8fc16b51c28ed9ef839c2267853a391"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.10.0/wikiview_linux_amd64.tar.gz"
      sha256 "20dbf3aa36dbfc1cbcd125fabd4c74a81540791dce90ec4186cb6a3c5c16e3ba"
    end
  end

  def install
    bin.install "wikiview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wikiview version")
  end
end
