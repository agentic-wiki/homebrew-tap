class Wikiview < Formula
  desc "Read and board agentic-wiki bundles in a browser"
  homepage "https://github.com/agentic-wiki/wikiview"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.7.0/wikiview_darwin_arm64.tar.gz"
      sha256 "7f81472449b02ee34473bcc8883275203acbe7c73439dbb7197c1ae789e4a40a"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.7.0/wikiview_darwin_amd64.tar.gz"
      sha256 "b91f17be28467d0073f4eeafbda971a53c5c92c780f5a352bfb7e33a1ccf304f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.7.0/wikiview_linux_arm64.tar.gz"
      sha256 "06b044dc502d03a3fb81a5d6a573bb316022aabcddcf7cecdfab37d0893d577b"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.7.0/wikiview_linux_amd64.tar.gz"
      sha256 "e95105da12dd98da9f394c8f352d2fa0b3a944c96bab03d0a1b21050a57baf8f"
    end
  end

  def install
    bin.install "wikiview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wikiview version")
  end
end
