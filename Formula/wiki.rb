class Wiki < Formula
  desc "Query and maintain agentic-wiki bundles (OKF markdown)"
  homepage "https://github.com/agentic-wiki/wiki"
  version "0.16.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.16.0/wiki_darwin_arm64.tar.gz"
      sha256 "3b3daf0528b696e687a9ff67aff0f06cd202f5302f48bab90df625d373f88b68"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.16.0/wiki_darwin_amd64.tar.gz"
      sha256 "48b16a19ba076b4e2223a2bb5d050bb7d915083659efc1146ebb84e0e7c3b0db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.16.0/wiki_linux_arm64.tar.gz"
      sha256 "6aa9bc571f40d5731e49974fb239d41aa0d0879a0ae8727503faca0e326ca4b3"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.16.0/wiki_linux_amd64.tar.gz"
      sha256 "8f56616bd78f2acf58ccdc146a1883f63c52e7c67e08049b39fba883686f7342"
    end
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki version")
  end
end
