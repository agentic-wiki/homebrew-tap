class Wiki < Formula
  desc "Query and maintain agentic-wiki bundles (OKF markdown)"
  homepage "https://github.com/agentic-wiki/wiki"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.6.0/wiki_darwin_arm64.tar.gz"
      sha256 "d766a74addf74852818d9381aafadb7a788ac331957ecc4b877632f10af328b1"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.6.0/wiki_darwin_amd64.tar.gz"
      sha256 "00f82b2f71e6191224d26c63a837660477cc329cf56cb4a2c1beba12e41e1751"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.6.0/wiki_linux_arm64.tar.gz"
      sha256 "6f7be47124138af500734eabfe724d18f72044490d1e55015f4402fbe4b144f1"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.6.0/wiki_linux_amd64.tar.gz"
      sha256 "f987accc5c974abba89cf8d67df3d47495d58f9ced3bee5b872ea12f52516366"
    end
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki version")
  end
end
