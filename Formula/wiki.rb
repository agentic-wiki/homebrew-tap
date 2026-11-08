class Wiki < Formula
  desc "Query and maintain agentic-wiki bundles (OKF markdown)"
  homepage "https://github.com/agentic-wiki/wiki"
  version "0.16.2"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.16.2/wiki_darwin_arm64.tar.gz"
      sha256 "c2f59cec35eb569f50a9c0a3586cc8b12cc290c71fd30e3d407c5ec8546c2f09"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.16.2/wiki_darwin_amd64.tar.gz"
      sha256 "530fdc783ebaedbdd76aba0faacb44661d7a0b933c1fc91d1891d0a6cb05dfb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.16.2/wiki_linux_arm64.tar.gz"
      sha256 "c00e0bcc17e801feafd94086895ff70e20a5460b1781d6a3a2f2e5cbefa844b1"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.16.2/wiki_linux_amd64.tar.gz"
      sha256 "54027084fdebc74ccd5b2d767f578df50573e048c3dad219b1b7c52aefb37558"
    end
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki version")
  end
end
