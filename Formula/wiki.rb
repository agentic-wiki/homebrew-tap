class Wiki < Formula
  desc "Query and maintain agentic-wiki bundles (OKF markdown)"
  homepage "https://github.com/agentic-wiki/wiki"
  version "0.18.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.18.0/wiki_darwin_arm64.tar.gz"
      sha256 "6abeef69b6ebe3bb39813d040ebd287bc8709667ef901885c66ad474b7d58af7"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.18.0/wiki_darwin_amd64.tar.gz"
      sha256 "25dd0519d3f5eadd0f0c1093369535e2f1b199723e942d5203d69db367d1faf7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.18.0/wiki_linux_arm64.tar.gz"
      sha256 "efc9bc3d4050b7b33a5539ed25e72fe913c588e7cb827e9c4915a51585474548"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.18.0/wiki_linux_amd64.tar.gz"
      sha256 "90ff42ca334467d47744b203b4aa2da7bb794cdde52f2354a229b5ff9e2a7d48"
    end
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki version")
  end
end
