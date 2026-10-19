class Wiki < Formula
  desc "Query and maintain agentic-wiki bundles (OKF markdown)"
  homepage "https://github.com/agentic-wiki/wiki"
  version "0.11.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.11.0/wiki_darwin_arm64.tar.gz"
      sha256 "a45985dcc91d43ca3f1c53788c62321054d3b7e72c1d4012ef2fd73b3b4563d5"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.11.0/wiki_darwin_amd64.tar.gz"
      sha256 "a1c7cca94d7d3df5aa530bf5758fb53a34f7a65155969eb3fea826a6a564c13d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.11.0/wiki_linux_arm64.tar.gz"
      sha256 "2fe8959142a0f61137f4060c069687574634ecac52b335e20d5e4559cdbf13ac"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.11.0/wiki_linux_amd64.tar.gz"
      sha256 "e094b617649e6af672ff09fc5240155b5d9d6bdaf446cb9cdf121a735c275ea7"
    end
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki version")
  end
end
