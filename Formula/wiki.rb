class Wiki < Formula
  desc "Query and maintain agentic-wiki bundles (OKF markdown)"
  homepage "https://github.com/agentic-wiki/wiki"
  version "0.15.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.15.0/wiki_darwin_arm64.tar.gz"
      sha256 "4f333fd671cf5bd27d6de4f1cdc5a84200a9ad75f5bc581de1566cd72df52cc6"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.15.0/wiki_darwin_amd64.tar.gz"
      sha256 "63f4a52e719dfd3421d10fed5e264c7c0b679e4b8c5f8c4e6ffb700a6141ac7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.15.0/wiki_linux_arm64.tar.gz"
      sha256 "0487afd3663d3a240a275289cc8a492a38e1e6e0d349f12ff019bb13e2c1188a"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.15.0/wiki_linux_amd64.tar.gz"
      sha256 "18d8392b873d24f24b249a873b28a81c60e9cdc6ac352bd27bbedbb211cc64a9"
    end
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki version")
  end
end
