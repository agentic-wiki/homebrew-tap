class Wikiview < Formula
  desc "Read and board agentic-wiki bundles in a browser"
  homepage "https://github.com/agentic-wiki/wikiview"
  version "0.15.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.15.0/wikiview_darwin_arm64.tar.gz"
      sha256 "691276edae5059db84b01eb8c41eb0792129b72411aabf755a20823513ddd6e7"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.15.0/wikiview_darwin_amd64.tar.gz"
      sha256 "a0cad80f926322c94f1133695982821994131342457e07a885ef88afd3a70d40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.15.0/wikiview_linux_arm64.tar.gz"
      sha256 "2bb7852d7fda7a6029eb754f38d575844bf72e2c20f8b71dec79857f8a237e7f"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wikiview/releases/download/v0.15.0/wikiview_linux_amd64.tar.gz"
      sha256 "298da0b4883b93c2c914e14314619ab46e1fb98f87c29eca6300b45ad1167e50"
    end
  end

  def install
    bin.install "wikiview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wikiview version")
  end
end
