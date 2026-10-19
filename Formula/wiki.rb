class Wiki < Formula
  desc "Query and maintain agentic-wiki bundles (OKF markdown)"
  homepage "https://github.com/agentic-wiki/wiki"
  version "0.12.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.12.0/wiki_darwin_arm64.tar.gz"
      sha256 "60f12d15faa9e0f63fa24909fb178de2a9026f28cf5c9ebefb37802a49cbdcb3"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.12.0/wiki_darwin_amd64.tar.gz"
      sha256 "cdab275e130a860c2223570a3443a88b9b7e0fd869bf243742809ad27ec8eaba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.12.0/wiki_linux_arm64.tar.gz"
      sha256 "48c881ddb17baacfa7fb0f11955d9efca10b2f911fc2eab717431591d73b8b28"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.12.0/wiki_linux_amd64.tar.gz"
      sha256 "b8822a4b68caae7c71e42ba70c1075ac6b385e66dc6a63dc08b33bbc7d839fb7"
    end
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki version")
  end
end
