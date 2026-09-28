class Wikiview < Formula
  desc "Read and board agentic-wiki bundles in a browser"
  homepage "https://github.com/agentic-wiki/wikiview"
  version "0.9.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.9.0/wikiview_darwin_arm64.tar.gz"
      sha256 "94d43b3aa88ecd47421f2676190f038eff162f0425c4a261df7db5d894004888"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.9.0/wikiview_darwin_amd64.tar.gz"
      sha256 "686dc947f82a6dd234a19d790be643035f42ef98bf28922343b4340c325ea5ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.9.0/wikiview_linux_arm64.tar.gz"
      sha256 "05d60e2688ebf46b9d49ceb50fac7ba9cf78ace761b30b70c4b808e049df179e"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.9.0/wikiview_linux_amd64.tar.gz"
      sha256 "d01bf7ca3c8012dd147ec349dc5181fc378ea49c13acd97a7e163d6245d98eba"
    end
  end

  def install
    bin.install "wikiview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wikiview version")
  end
end
