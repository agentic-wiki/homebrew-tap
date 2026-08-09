class Wiki < Formula
  desc "Query and maintain agentic-wiki bundles (OKF markdown)"
  homepage "https://github.com/agentic-wiki/wiki"
  version "0.9.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.9.0/wiki_darwin_arm64.tar.gz"
      sha256 "8b1307d7f8dbb7fee4bc8138825ff865e6a33237609197e65743be5bb89e7d5f"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.9.0/wiki_darwin_amd64.tar.gz"
      sha256 "7598a1a6a3d3fceb61b76162543ee1dc6ff757f17aca5a31c82a91756b1493ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.9.0/wiki_linux_arm64.tar.gz"
      sha256 "0acdbd9f1e2cff2ca03924d8306c985665d1c0853ff81b7bfddd836ee3df9600"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.9.0/wiki_linux_amd64.tar.gz"
      sha256 "eac1fba1e8762fd01c44e97085be03a4464c61ae6495c468b5cd52b0c5bec92b"
    end
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki version")
  end
end
