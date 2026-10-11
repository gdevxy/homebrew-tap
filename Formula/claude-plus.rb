class ClaudePlus < Formula
  desc "Token, cache and cost visibility for Claude Code"
  homepage "https://github.com/gdevxy/claude-plus"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gdevxy/claude-plus/releases/download/v0.2.0/claude-plus-aarch64-apple-darwin.tar.gz"
      sha256 "3708589c759497c4435b8885020b17f59b6a72b9adfd26e3c553caaf39f55eff"
    end
    on_intel do
      url "https://github.com/gdevxy/claude-plus/releases/download/v0.2.0/claude-plus-x86_64-apple-darwin.tar.gz"
      sha256 "2db8c799b8cdd4f33e7833c5d73efad04d87cc06f4756595e742a74adc8a65cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gdevxy/claude-plus/releases/download/v0.2.0/claude-plus-aarch64-unknown-linux-musl.tar.gz"
      sha256 "853aa2c9598f45161fd2d2806320ae83a63971264367f5069b7097c7c6f1f195"
    end
    on_intel do
      url "https://github.com/gdevxy/claude-plus/releases/download/v0.2.0/claude-plus-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cfcff6b73845c5f6a6cbeb324ca0a6dbfe7c4513790e75ee4446031b1c94f4db"
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
