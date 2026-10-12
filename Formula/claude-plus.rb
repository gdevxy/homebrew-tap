class ClaudePlus < Formula
  desc "Token, cache and cost visibility for Claude Code"
  homepage "https://github.com/gdevxy/claude-plus"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gdevxy/claude-plus/releases/download/v0.2.1/claude-plus-aarch64-apple-darwin.tar.gz"
      sha256 "7ce303467c20c85922a22bbe63736143551aa808d0716862692c01d6370a176f"
    end
    on_intel do
      url "https://github.com/gdevxy/claude-plus/releases/download/v0.2.1/claude-plus-x86_64-apple-darwin.tar.gz"
      sha256 "efcc4b90b44bde5a286ed4f8f4a2e92e11d31d41da93b6ab69b1e755aa31064e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gdevxy/claude-plus/releases/download/v0.2.1/claude-plus-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2c520678344283e7549e4a754a2cd3ebf51e898514075191aebea0c3c2be52a1"
    end
    on_intel do
      url "https://github.com/gdevxy/claude-plus/releases/download/v0.2.1/claude-plus-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3afc82f2eb0f5431bd767172cae360472661386f3f000d699059bb6d2a5c4dec"
    end
  end

  def install
    bin.install "claude-plus"
  end

  def caveats
    <<~EOS
      Run claude-plus install to add the pane to Claude Code.
      After an upgrade, the next Claude Code session updates the pane, and the sessions after it show the new one.
      Run claude-plus uninstall before brew uninstall claude-plus, or Claude Code keeps a mod whose binary is gone.
    EOS
  end

  test do
    assert_match "claude-plus #{version}", shell_output("#{bin}/claude-plus --version")
  end
end
