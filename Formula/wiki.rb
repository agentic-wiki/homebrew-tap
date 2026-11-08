class Wiki < Formula
  desc "Query and maintain agentic-wiki bundles (OKF markdown)"
  homepage "https://github.com/agentic-wiki/wiki"
  version "0.16.1"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.16.1/wiki_darwin_arm64.tar.gz"
      sha256 "1ef7dcb1cf1c75be28a9e2372dffc0f6ebbdd11b06c678b01ee7df16feec24cc"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.16.1/wiki_darwin_amd64.tar.gz"
      sha256 "5ed5e7c283993227b0288ad436411670c2de32b308f8cf0533a7815e76f3312c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.16.1/wiki_linux_arm64.tar.gz"
      sha256 "bf6513a4ed9fc0ed17d3e2d759cf83f304a6f7779779f28eff63e40a6f1b60d0"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.16.1/wiki_linux_amd64.tar.gz"
      sha256 "ce5ef42a84312640515d600df177f3fc41b9a0be940076920a461b845db940f5"
    end
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki version")
  end
end
