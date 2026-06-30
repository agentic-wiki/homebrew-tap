class Wiki < Formula
  desc "Query and maintain agentic-wiki bundles (OKF markdown)"
  homepage "https://github.com/agentic-wiki/wiki"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.3.1/wiki_darwin_arm64.tar.gz"
      sha256 "8df4efe18a9d6fa397321443536d8b0186bf0f20ed35571000a136f1dd6c5b74"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.3.1/wiki_darwin_amd64.tar.gz"
      sha256 "247a490336e34390bd9ac5901d4ec8e40723d57b964b8202acaf96f9ff349d05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.3.1/wiki_linux_arm64.tar.gz"
      sha256 "430cace6d7b7bc6746639e1e9c39b7521e231c30ab755b00d860e10d4da75379"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.3.1/wiki_linux_amd64.tar.gz"
      sha256 "c1916ca400266fe8daaafe4559c0090761820da857215daadd372d84a2321396"
    end
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki version")
  end
end
