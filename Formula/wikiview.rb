class Wikiview < Formula
  desc "Read and board agentic-wiki bundles in a browser"
  homepage "https://github.com/agentic-wiki/wikiview"
  version "0.12.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.12.0/wikiview_darwin_arm64.tar.gz"
      sha256 "e059ddc3d26cc89ca95aedc9b3f39aae86bd01156089221f62f7d5426a350e25"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.12.0/wikiview_darwin_amd64.tar.gz"
      sha256 "d63812705d2d4cc76494b4cc7cf61adec2cda99b0468d89b4852983c633765ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.12.0/wikiview_linux_arm64.tar.gz"
      sha256 "a841c45281c72febe8ad67dad08b5039d84b387a782fd6c5b41f71971d28bb57"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.12.0/wikiview_linux_amd64.tar.gz"
      sha256 "54bdd7a75ed641b630734cebc65ac2f6c32258f138b0747e6d9d2b28e04a0f77"
    end
  end

  def install
    bin.install "wikiview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wikiview version")
  end
end
