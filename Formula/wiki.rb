class Wiki < Formula
  desc "Query and maintain agentic-wiki bundles (OKF markdown)"
  homepage "https://github.com/agentic-wiki/wiki"
  version "0.19.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.19.0/wiki_darwin_arm64.tar.gz"
      sha256 "d3a1e115c94616b45ce593ba67406178029a1a872a249badc4abf6824cea41e1"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.19.0/wiki_darwin_amd64.tar.gz"
      sha256 "f7ff1a47364b8cc3485f6248544c828c63ca54c6674d541017dd882d6e648ffd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.19.0/wiki_linux_arm64.tar.gz"
      sha256 "1254bdd684eba60bcf9ce2a4f50b3949413e27b17107256222542281a8fea20f"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.19.0/wiki_linux_amd64.tar.gz"
      sha256 "78927df089778cd88e0d27c66aa891daa2ea4898d0cfa7b1ec2a9df471da666e"
    end
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki version")
  end
end
