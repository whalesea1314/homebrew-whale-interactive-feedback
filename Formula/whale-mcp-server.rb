class WhaleMcpServer < Formula
  desc "Whale Interactive Feedback MCP Server - AI-powered text optimization tool"
  homepage "https://github.com/whalesea1314/rust-interactive-feedback"
  version "0.1.0"
  license "MIT"

  on_intel do
    url "https://github.com/whalesea1314/rust-interactive-feedback/releases/download/v0.1.0/whale-mcp-server-v0.1.0-macos-x86_64.tar.gz"
    sha256  "REPLACE_WITH_INTEL_SHA256"
  end

  on_arm do
    url "https://github.com/whalesea1314/rust-interactive-feedback/releases/download/v0.1.0/whale-mcp-server-v0.1.0-macos-aarch64.tar.gz"
    sha256  "REPLACE_WITH_ARM_SHA256"
  end

  def install
    bin.install "whale-mcp-server"
  end

  def caveats
    <<~EOS
      To use whale-mcp-server with your AI assistant, add the following to your MCP config:

      {
        "mcpServers": {
          "whale-interactive-feedback": {
            "command": "#{HOMEBREW_PREFIX}/bin/whale-mcp-server"
          }
        }
      }

      For more information, visit:
      https://github.com/whalesea1314/rust-interactive-feedback
    EOS
  end

  test do
    assert_match "whale", shell_output("#{bin}/whale-mcp-server --version 2>&1", 1)
  end
end
