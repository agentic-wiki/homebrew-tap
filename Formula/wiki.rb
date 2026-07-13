class Wiki < Formula
  desc "Query and maintain agentic-wiki bundles (OKF markdown)"
  homepage "https://github.com/agentic-wiki/wiki"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.8.0/wiki_darwin_arm64.tar.gz"
      sha256 "5286846a940103ff922c96976c0129f8e70844441e1b9a51ef5093770c872883"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.8.0/wiki_darwin_amd64.tar.gz"
      sha256 "8e29d964a6ff3411537ebce61acf451ef13ac8bdb0deef13edc9b1d3bdec456c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.8.0/wiki_linux_arm64.tar.gz"
      sha256 "3689f5e156d1525375512e1e8819f8d421da4f0d278be9ba76b2747f70c6861a"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.8.0/wiki_linux_amd64.tar.gz"
      sha256 "63bf0aab68bce0fa5220f5af12103e7fee3dc624189bc0c34ce0d5c170081d39"
    end
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki version")
  end
end
