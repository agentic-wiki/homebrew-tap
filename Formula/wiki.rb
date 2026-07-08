class Wiki < Formula
  desc "Query and maintain agentic-wiki bundles (OKF markdown)"
  homepage "https://github.com/agentic-wiki/wiki"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.4.0/wiki_darwin_arm64.tar.gz"
      sha256 "850a407c7a8464b9e01d2fb9ed5db120c04760a6461c3d3e8a6de15d7c6e9476"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.4.0/wiki_darwin_amd64.tar.gz"
      sha256 "69dcc2335b453d482fad8889e0d9eda78c911b6e75ff57e89f2a166c0a2bae7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.4.0/wiki_linux_arm64.tar.gz"
      sha256 "027fc8f9771539ecd29897499bd69082de39f339dffd5800e0d652feaad5e8a9"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.4.0/wiki_linux_amd64.tar.gz"
      sha256 "6921ed00a7d90f29d497c75a13cdf3b84011dd8bf6b5ac5e50494b1ed68acc75"
    end
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki version")
  end
end
