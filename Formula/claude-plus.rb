class ClaudePlus < Formula
  desc "Token, cache and cost visibility for Claude Code"
  homepage "https://github.com/gdevxy/claude-plus"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gdevxy/claude-plus/releases/download/v0.2.2/claude-plus-aarch64-apple-darwin.tar.gz"
      sha256 "6f75b8aabe33372bf87a90bf2916e50f0eb5f5a45a36e8f9664c3c28c70da947"
    end
    on_intel do
      url "https://github.com/gdevxy/claude-plus/releases/download/v0.2.2/claude-plus-x86_64-apple-darwin.tar.gz"
      sha256 "1333f2967981f7624d110255be31e42e4a094f6aaf1a7cbb70206370277ee904"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gdevxy/claude-plus/releases/download/v0.2.2/claude-plus-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d107d4387d0088bcd36fa0bde1d764663c2e5a949498c00ba4257fc3a19514cc"
    end
    on_intel do
      url "https://github.com/gdevxy/claude-plus/releases/download/v0.2.2/claude-plus-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4985d4c3443241f522b314001a0fdeefc3a1a5b2bcdb5394c0baa260568e3850"
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
