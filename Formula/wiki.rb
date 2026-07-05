class Wiki < Formula
  desc "Query and maintain agentic-wiki bundles (OKF markdown)"
  homepage "https://github.com/agentic-wiki/wiki"
  version "0.3.2"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.3.2/wiki_darwin_arm64.tar.gz"
      sha256 "634ff04711b272c8cdd1d120a1e6548cf1f68a066c70ebfa90f831d5ad1888a9"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.3.2/wiki_darwin_amd64.tar.gz"
      sha256 "d43474dbbae03937af8050421deda5ad56cd9bff39c3802e1aca7afa02294671"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.3.2/wiki_linux_arm64.tar.gz"
      sha256 "3664f738e72cfee0e142dd04bd14d94ace1cf27aba89d3dea7032e70e028411f"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.3.2/wiki_linux_amd64.tar.gz"
      sha256 "945d0c196124eb283b8850635cc52960e9d92c3134815e0df3a66d9cd7e19c3f"
    end
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki version")
  end
end
