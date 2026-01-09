class WhaleAskServer < Formula
  desc "Whale Interactive Feedback MCP Server - AI-powered interactive feedback tool"
  homepage "https://github.com/whalesea1314/whale-interactive-feedback"
  version "1.0.1"
  license "MIT"

  on_intel do
    url "https://github.com/whalesea1314/whale-interactive-feedback/releases/download/v1.0.1/whale-ask-server-v1.0.1-macos-x86_64.tar.gz"
    sha256  "9b936fafa3cfa22ff6e41f619c98d552c699ef8b9a8cfa1d9b092d3377bc009f"
  end

  on_arm do
    url "https://github.com/whalesea1314/whale-interactive-feedback/releases/download/v1.0.1/whale-ask-server-v1.0.1-macos-aarch64.tar.gz"
    sha256  "7e7bfa98004c170ab1b0764e4ebc3f47b0ed9b75583a7d1b7a67939ad47d0848"
  end

  def install
    bin.install "whale-ask-server"
  end

  def caveats
    <<~EOS
      🐋 Whale Ask Server 安装成功！

      配置 MCP 客户端（如 Kiro、Cursor、Claude Desktop）：

      {
        "mcpServers": {
          "whale-interactive-feedback": {
            "command": "#{HOMEBREW_PREFIX}/bin/whale-ask-server"
          }
        }
      }

      更多信息: https://github.com/whalesea1314/whale-interactive-feedback
    EOS
  end

  test do
    system "#{bin}/whale-ask-server", "--help"
  end
end
