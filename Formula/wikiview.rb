class Wikiview < Formula
  desc "Read and board agentic-wiki bundles in a browser"
  homepage "https://github.com/agentic-wiki/wikiview"
  version "0.13.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.13.0/wikiview_darwin_arm64.tar.gz"
      sha256 "e2c781f937948326e6a6f7ae6375ad6186a6d50a980e49aaf154cbe673a3f07c"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.13.0/wikiview_darwin_amd64.tar.gz"
      sha256 "dba053594f32d8fef5b04ab23bce278a3bc9cdc3a19f0d94b0b601f4cba3420f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.13.0/wikiview_linux_arm64.tar.gz"
      sha256 "c35f85a469c0a9dbb2fd25fe9aa31cd1abd52a95565be482c4259d3d8cb5927f"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.13.0/wikiview_linux_amd64.tar.gz"
      sha256 "72c0cf892d079575e1db0e31c650abb3d78712016b7d8e773b2a31ecb3d7a508"
    end
  end

  def install
    bin.install "wikiview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wikiview version")
  end
end
