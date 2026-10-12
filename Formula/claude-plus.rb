class ClaudePlus < Formula
  desc "Token, cache and cost visibility for Claude Code"
  homepage "https://github.com/gdevxy/claude-plus"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gdevxy/claude-plus/releases/download/v0.3.0/claude-plus-aarch64-apple-darwin.tar.gz"
      sha256 "0417792f3db129be353132931818ece3b04d3438a5fe6008f3974c291982445e"
    end
    on_intel do
      url "https://github.com/gdevxy/claude-plus/releases/download/v0.3.0/claude-plus-x86_64-apple-darwin.tar.gz"
      sha256 "e12b2a954dc5d5ff89c53bb44b6bff368367402de3e797d81db5611935ff3621"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gdevxy/claude-plus/releases/download/v0.3.0/claude-plus-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ff68e1191c386efc010f5f04d11bd28adf1c617faa449d6a61659cd732c209a7"
    end
    on_intel do
      url "https://github.com/gdevxy/claude-plus/releases/download/v0.3.0/claude-plus-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0e13e047bc4096d485aeaf9dd4bc89bc2f51139fc5c5f5a818b84fbb11d64294"
    end
  end

  def install
    bin.install "claude-plus"
  end

  def caveats
    <<~EOS
      Run claude-plus install to add the pane to Claude Code.
      After an upgrade, the next Claude Code session updates the pane and reloads it; sessions already open show it after /reload-plugins.
      Run claude-plus uninstall before brew uninstall claude-plus, or Claude Code keeps a mod whose binary is gone.
    EOS
  end

  test do
    assert_match "claude-plus #{version}", shell_output("#{bin}/claude-plus --version")
  end
end
