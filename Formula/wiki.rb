class Wiki < Formula
  desc "Query and maintain agentic-wiki bundles (OKF markdown)"
  homepage "https://github.com/agentic-wiki/wiki"
  version "0.10.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.10.0/wiki_darwin_arm64.tar.gz"
      sha256 "d0551e1e9a4758fb26ed9136d63ef828ecec62f9018ce36d203da10fb9832400"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.10.0/wiki_darwin_amd64.tar.gz"
      sha256 "6fb3c73f1272dad01f24474bb604591fc516c18ff4b3cd22a064f54082887f1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.10.0/wiki_linux_arm64.tar.gz"
      sha256 "d5a1afe0f7e32ec0261cf04bfbde6c2801c0ea6d5477a9f9dfd3d4508c6fa590"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.10.0/wiki_linux_amd64.tar.gz"
      sha256 "719faa8dec3e5287754688b1e17db11b6910f71a0f240ff55cbadbb0e4c34031"
    end
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki version")
  end
end
