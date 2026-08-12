class Wikiview < Formula
  desc "Read and board agentic-wiki bundles in a browser"
  homepage "https://github.com/agentic-wiki/wikiview"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.3.0/wikiview_darwin_arm64.tar.gz"
      sha256 "ffbfaee9eeb7d90460f3bdb0c70dae02d499f48f1f00f0054f3e7eaeeb6fc654"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.3.0/wikiview_darwin_amd64.tar.gz"
      sha256 "3ee9c7e8cd315dfd0796e1976886223cc89532deb195750100c0081ea3966abc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.3.0/wikiview_linux_arm64.tar.gz"
      sha256 "50758d0bef386b2c2c59760e1c568ce7b47da7f632275b11defc7ff8c0c04395"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.3.0/wikiview_linux_amd64.tar.gz"
      sha256 "a7a331242f4261e8d6b60a22b38f7b54025758fdb70907602dd33d4f8cc286c4"
    end
  end

  def install
    bin.install "wikiview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wikiview version")
  end
end
