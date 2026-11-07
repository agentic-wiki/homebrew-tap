class Wiki < Formula
  desc "Query and maintain agentic-wiki bundles (OKF markdown)"
  homepage "https://github.com/agentic-wiki/wiki"
  version "0.15.1"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.15.1/wiki_darwin_arm64.tar.gz"
      sha256 "5b89be6690233e2e9fccdacb3495887bed6de8edda91e7fe08cefdd47ca06aa5"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.15.1/wiki_darwin_amd64.tar.gz"
      sha256 "016a3c359f3864e83faec5f42b66146bb8c82b837777266689787b40bcb881aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.15.1/wiki_linux_arm64.tar.gz"
      sha256 "e88d89f01b3676be94cf0e51174f49c4cc69d5457febc7beb228e76a391e887c"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.15.1/wiki_linux_amd64.tar.gz"
      sha256 "7940ff2b2e2ec00b087686f6ff070b385b876d8c09aa125636345b4d3aac27a8"
    end
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki version")
  end
end
