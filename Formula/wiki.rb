class Wiki < Formula
  desc "Query and maintain agentic-wiki bundles (OKF markdown)"
  homepage "https://github.com/agentic-wiki/wiki"
  version "0.24.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.24.0/wiki_darwin_arm64.tar.gz"
      sha256 "d2569f2a830f26b18511dbf0c710ef5569ed68a42802dcf0d06afa3b4da3fbba"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.24.0/wiki_darwin_amd64.tar.gz"
      sha256 "88c0be3d6a898973cda4e1eb84094c6a513b63fc98c2814cb4394f2342b9ce1f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.24.0/wiki_linux_arm64.tar.gz"
      sha256 "eb040f6c06786862484434d93507fbd27682695eff66d83fa8089b098016f188"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.24.0/wiki_linux_amd64.tar.gz"
      sha256 "78c821eecea5c3833b195f16cf959234b183f4adc1fda3eece595a5f1b3495b3"
    end
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki version")
  end
end
