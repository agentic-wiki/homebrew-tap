class Wikiview < Formula
  desc "Read and board agentic-wiki bundles in a browser"
  homepage "https://github.com/agentic-wiki/wikiview"
  version "0.17.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.17.0/wikiview_darwin_arm64.tar.gz"
      sha256 "9046ee7eea12d293f902c2b9ba82eade628b6c524883a1d55cbe9dab2fe26171"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.17.0/wikiview_darwin_amd64.tar.gz"
      sha256 "e408de7533c5d4d8f4a3ee48e54402f664c2d682ec3a4b66b7d00459f627dcac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.17.0/wikiview_linux_arm64.tar.gz"
      sha256 "6e1fd4d4c11e326287cb9822496e9fbfbe37223a3f4c333cd9b0b50cfba9ee62"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.17.0/wikiview_linux_amd64.tar.gz"
      sha256 "a8933f51fa6971ef96177ea7304e301d08cea3b131de4d4e8c376454bc4e4b02"
    end
  end

  def install
    bin.install "wikiview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wikiview version")
  end
end
