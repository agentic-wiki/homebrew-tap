class Wiki < Formula
  desc "Query and maintain agentic-wiki bundles (OKF markdown)"
  homepage "https://github.com/agentic-wiki/wiki"
  version "0.17.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.17.0/wiki_darwin_arm64.tar.gz"
      sha256 "1256000c91b3951c4abe75c60fa586170a13087878b86cdda62b15ad289de8ab"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.17.0/wiki_darwin_amd64.tar.gz"
      sha256 "d4263d6476e326eaf6f6d3382a3db9152bfead74606c45bfd044f48b9561a4a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.17.0/wiki_linux_arm64.tar.gz"
      sha256 "ec5a802beee0790bd665cae74dcc12aeb71784a8d71a82cdcd786e61b36589f2"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.17.0/wiki_linux_amd64.tar.gz"
      sha256 "3c0db99642dc6db5a4a15ec8a7494bc63531df6b0af646cd8006eb75d8639395"
    end
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki version")
  end
end
