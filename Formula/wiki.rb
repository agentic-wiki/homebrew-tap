class Wiki < Formula
  desc "Query and maintain agentic-wiki bundles (OKF markdown)"
  homepage "https://github.com/agentic-wiki/wiki"
  version "0.14.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.14.0/wiki_darwin_arm64.tar.gz"
      sha256 "00e98e95554581e8b1162c8af2177166e877e7b5926931be2e6522b5a319958a"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.14.0/wiki_darwin_amd64.tar.gz"
      sha256 "8b4b33c7f6af2de0026d4880ad94754d6de032bc434ee47a187acf35afe3b814"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.14.0/wiki_linux_arm64.tar.gz"
      sha256 "65a30986f760e7d1438a4a0ba4a8177792496a27b552c2267dbcbda30c2fddb1"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.14.0/wiki_linux_amd64.tar.gz"
      sha256 "e3e172afdc49e00451af7df60481b0a6f178bd36193e940a5ba8cfc77212fdc5"
    end
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki version")
  end
end
