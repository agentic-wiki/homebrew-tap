class Wiki < Formula
  desc "Query and maintain agentic-wiki bundles (OKF markdown)"
  homepage "https://github.com/agentic-wiki/wiki"
  version "0.13.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.13.0/wiki_darwin_arm64.tar.gz"
      sha256 "fbda29d560d39662003cd39fd7fdab2a2c633b159db0053e0007da3a378dd4f3"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.13.0/wiki_darwin_amd64.tar.gz"
      sha256 "445732b15c7512c12a102c860b25ee1c5de0d0d7256b593ce1a90b7525634a78"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.13.0/wiki_linux_arm64.tar.gz"
      sha256 "d7bdb3a466424636b5a8f9fba1a0bd5a42d6fc5a2ad8ca39cc9ae25b8061ae99"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.13.0/wiki_linux_amd64.tar.gz"
      sha256 "de6c92bb4c105ac48bd665e3be645d6ff9afc18284b3eaa871958552b5ee0529"
    end
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki version")
  end
end
