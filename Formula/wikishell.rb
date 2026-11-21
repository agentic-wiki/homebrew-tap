class Wikishell < Formula
  desc "Read and board agentic-wiki bundles in a browser"
  homepage "https://github.com/agentic-wiki/wiki-shell"
  version "0.21.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki-shell/releases/download/v0.21.0/wikishell_darwin_arm64.tar.gz"
      sha256 "2174e8e03455de7686a697a1ca5a6ae03c9f6d5872a61ff904b3a11d9862b623"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki-shell/releases/download/v0.21.0/wikishell_darwin_amd64.tar.gz"
      sha256 "94d6cddb680d9f914787109833333538e72b6e5b248ef9598f7daef0e05ddeb5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki-shell/releases/download/v0.21.0/wikishell_linux_arm64.tar.gz"
      sha256 "b80f5f94513a9782f41c6b210d44a4a6519d764e31c9065d4b03d8711f257e29"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki-shell/releases/download/v0.21.0/wikishell_linux_amd64.tar.gz"
      sha256 "bf04e873925f5d6f7eeed0306ca926586a3f7534057c80c9bbc89f6698974ce1"
    end
  end

  def install
    bin.install "wikishell"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wikishell version")
  end
end
