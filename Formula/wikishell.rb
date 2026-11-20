class Wikishell < Formula
  desc "Read and board agentic-wiki bundles in a browser"
  homepage "https://github.com/agentic-wiki/wiki-shell"
  version "0.19.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki-shell/releases/download/v0.19.0/wikishell_darwin_arm64.tar.gz"
      sha256 "17350d484c3be22bac7573818234223c0b20037b6089cff145956f84ff2e693d"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki-shell/releases/download/v0.19.0/wikishell_darwin_amd64.tar.gz"
      sha256 "3a5faf795416268c313804b59464674e9b30d0c8151433465bcd2d1ffc156858"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki-shell/releases/download/v0.19.0/wikishell_linux_arm64.tar.gz"
      sha256 "2df9c88cd040aa3c2149f5c867c71e9dbb5dc86da310a5ac80fce9dc12ee8559"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki-shell/releases/download/v0.19.0/wikishell_linux_amd64.tar.gz"
      sha256 "791d589c2be567f88c63b1a2a983ec08f73055ef5055300285c46fb714441615"
    end
  end

  def install
    bin.install "wikishell"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wikishell version")
  end
end
