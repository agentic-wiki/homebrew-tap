class Wiki < Formula
  desc "Query and maintain agentic-wiki bundles (OKF markdown)"
  homepage "https://github.com/agentic-wiki/wiki"
  version "0.18.1"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.18.1/wiki_darwin_arm64.tar.gz"
      sha256 "8dfb0bd933c822024d06407546008a39a5d51834ff630cb9f4a95dd1a53ed261"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.18.1/wiki_darwin_amd64.tar.gz"
      sha256 "13d7214f3d77ff5117b091dc8c15a52f27e1702634994b7155f6a86f4d992d94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.18.1/wiki_linux_arm64.tar.gz"
      sha256 "e70e932994a08aa4aeb55bc1af165a268bb3b2c738a1a6ddc685a19727729752"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.18.1/wiki_linux_amd64.tar.gz"
      sha256 "b440186841f262d72b252240ae7adffd843ec09bc7c390f0df8251a8c12c325a"
    end
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki version")
  end
end
