class Wiki < Formula
  desc "Query and maintain agentic-wiki bundles (OKF markdown)"
  homepage "https://github.com/agentic-wiki/wiki"
  version "0.15.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.15.0/wiki_darwin_arm64.tar.gz"
      sha256 "cf457c37da5626f118bbfa1ea408b7b8acbf1d15913ee3efb7da1e153c6ce3d3"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.15.0/wiki_darwin_amd64.tar.gz"
      sha256 "38bed764097bea03f13d5ac1b964d9f885071d5fe5d3533012ec165d5cd32f72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.15.0/wiki_linux_arm64.tar.gz"
      sha256 "48204d366e5265e395854d37ab4687ddd80d3f910aabba169f392161cfb512cc"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.15.0/wiki_linux_amd64.tar.gz"
      sha256 "a1ab4431e5a50fe70a2d418d3843cd12f76abea0bfd811510ac750a2eb9f886d"
    end
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki version")
  end
end
