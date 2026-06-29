class Wiki < Formula
  desc "Query and maintain agentic-wiki bundles (OKF markdown)"
  homepage "https://github.com/agentic-wiki/wiki"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.3.0/wiki_darwin_arm64.tar.gz"
      sha256 "9be4249927ab047e5be0a789761cc4f0bfa9d053a9295bffd81a03e7296244bb"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.3.0/wiki_darwin_amd64.tar.gz"
      sha256 "260b0a2b1e57e3e53445a46c365f6a6dde334b6d2cbf53d1a1af740f1538b823"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.3.0/wiki_linux_arm64.tar.gz"
      sha256 "0d5e1c645df41ca63be970d5531152ef1a065f06df5bcbe91730347d62d5d20a"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.3.0/wiki_linux_amd64.tar.gz"
      sha256 "18defc74cfa22fa4b93ad87f25ec0c0806f221439578c9b9063a2d62ea5ed50c"
    end
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki version")
  end
end
