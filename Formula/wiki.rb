class Wiki < Formula
  desc "Query and maintain agentic-wiki bundles (OKF markdown)"
  homepage "https://github.com/agentic-wiki/wiki"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.7.0/wiki_darwin_arm64.tar.gz"
      sha256 "6004fc22b48d1758063cfd9eaf18fdd768accbc75f6a07a2f14b4b72f7429520"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.7.0/wiki_darwin_amd64.tar.gz"
      sha256 "f23321f394575387e5f99f89f11f0a0f22f7b04ddc89fe8d6a01526341e2eee4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.7.0/wiki_linux_arm64.tar.gz"
      sha256 "3dcfd818202c478ea92386fbd750ac2658d30612d27e135cedc18f1f39d28cda"
    end
    on_intel do
      url "https://github.com/agentic-wiki/wiki/releases/download/v0.7.0/wiki_linux_amd64.tar.gz"
      sha256 "3a131a64e2920dbd33c316f1ee6bcf37ffd6adfc85e473e3465ae546d28c1799"
    end
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki version")
  end
end
