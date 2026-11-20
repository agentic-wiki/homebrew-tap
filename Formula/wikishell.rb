class Wikishell < Formula
  desc "Read and board agentic-wiki bundles in a browser"
  homepage "https://github.com/agentic-wiki/wiki-shell"
  version "0.18.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki-shell/releases/download/v0.18.0/wikishell_darwin_arm64.tar.gz"
      sha256 "35316189b4259c50c363481db427013394f62302da0c58a4fbbe6b344c43ffa5"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki-shell/releases/download/v0.18.0/wikishell_darwin_amd64.tar.gz"
      sha256 "dab17c43a61f2543a35bcb7e00d560512598ddfe361eebbdeae66654c3f816f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki-shell/releases/download/v0.18.0/wikishell_linux_arm64.tar.gz"
      sha256 "49bfb86e2bc3e3c66dbf47e1f44990ccd83ed8f523429425d0d54dcb8391f947"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki-shell/releases/download/v0.18.0/wikishell_linux_amd64.tar.gz"
      sha256 "1a78ce4be3a84ab67c4533458b4a55d07d196d676c4f60cc429d81b22fbf0bb5"
    end
  end

  def install
    bin.install "wikishell"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wikishell version")
  end
end
