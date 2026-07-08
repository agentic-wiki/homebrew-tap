class Wiki < Formula
  desc "Query and maintain agentic-wiki bundles (OKF markdown)"
  homepage "https://github.com/agentic-wiki/wiki"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.5.0/wiki_darwin_arm64.tar.gz"
      sha256 "f9eb3c5e3527e23f5ae2a1999861767a05e3cea7e2b1f1f547c2f47585c14017"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.5.0/wiki_darwin_amd64.tar.gz"
      sha256 "688d14d18c06b1804960438433421f83713a3d3428bf360a70277c2ff183e0f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.5.0/wiki_linux_arm64.tar.gz"
      sha256 "8ded295ddf39b7c8aed1f110c45ad77d2aa829da8d77641808b2b71929a08497"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.5.0/wiki_linux_amd64.tar.gz"
      sha256 "951694d111eb23926351157015497292ca494ccbe8bd1079ad58b8283720fa2d"
    end
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki version")
  end
end
