class Wikishell < Formula
  desc "Read and board agentic-wiki bundles in a browser"
  homepage "https://github.com/agentic-wiki/wiki-shell"
  version "0.20.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki-shell/releases/download/v0.20.0/wikishell_darwin_arm64.tar.gz"
      sha256 "e62ec47934f74eafbc8aa13f67ec51662cb5f2e7c5818933a5a5e97a82bb727f"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki-shell/releases/download/v0.20.0/wikishell_darwin_amd64.tar.gz"
      sha256 "c41ad2ddca466c24ae3a2a27a8e51a91b4d9b9c86ebc5654fa710f37e635e818"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki-shell/releases/download/v0.20.0/wikishell_linux_arm64.tar.gz"
      sha256 "4e74415bc2fa9de9ca309e26a1c4aa258292809da9937e49dc92543343fa2ff3"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki-shell/releases/download/v0.20.0/wikishell_linux_amd64.tar.gz"
      sha256 "8fbd4cff518978a6425fc6a497e2f66fd1cfc643e955a5cddd19943777d242d9"
    end
  end

  def install
    bin.install "wikishell"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wikishell version")
  end
end
