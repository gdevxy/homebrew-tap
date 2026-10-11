class ClaudePlus < Formula
  desc "Token, cache and cost visibility for Claude Code"
  homepage "https://github.com/gdevxy/claude-plus"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gdevxy/claude-plus/releases/download/v0.1.0/claude-plus-aarch64-apple-darwin.tar.gz"
      sha256 "7ff7208063107a0d910f4f3e87d2813fe894b74cafd971bdc1d0e6ed427f65b6"
    end
    on_intel do
      url "https://github.com/gdevxy/claude-plus/releases/download/v0.1.0/claude-plus-x86_64-apple-darwin.tar.gz"
      sha256 "7ce34e8cbeb43789d65729b249d8c50a65f091cc3922bba21c93fcb00fe8e8bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gdevxy/claude-plus/releases/download/v0.1.0/claude-plus-aarch64-unknown-linux-musl.tar.gz"
      sha256 "32859d9f7bd44ace19f047fff0b8f814ee475f9960ef27ec31c9f739e4b6fa9e"
    end
    on_intel do
      url "https://github.com/gdevxy/claude-plus/releases/download/v0.1.0/claude-plus-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e90f0d4cd5a30ab35ca47bc013999dfe9150360e151d58c7f82cca0624d8d75e"
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
