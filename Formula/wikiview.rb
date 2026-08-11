class Wikiview < Formula
  desc "Read and board agentic-wiki bundles in a browser"
  homepage "https://github.com/agentic-wiki/wikiview"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.1.0/wikiview_darwin_arm64.tar.gz"
      sha256 "2dccc3a8b7dd1f04b7bf90e058c8cdf140fa7e1ae386ba783a7783aa2de53daf"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.1.0/wikiview_darwin_amd64.tar.gz"
      sha256 "cf2d20f6efb3683846c7994f779900cbb3438045155d42def4d0b02da590d1e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.1.0/wikiview_linux_arm64.tar.gz"
      sha256 "c1df343822371af329ebd5a83933513d343c31ba9393750dde06f9b91b49437c"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.1.0/wikiview_linux_amd64.tar.gz"
      sha256 "290461347fe2050365b05dc812402bcd77eb0d9ce57753e8e6e79106c5a8c4ec"
    end
  end

  def install
    bin.install "wikiview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wikiview version")
  end
end
