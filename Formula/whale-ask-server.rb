class WhaleAskServer < Formula
  desc "Whale Interactive Feedback MCP Server - AI-powered interactive feedback tool"
  homepage "https://github.com/whalesea1314/whale-interactive-feedback"
  version "1.0.0"
  license "MIT"

  on_intel do
    url "https://github.com/whalesea1314/whale-interactive-feedback/releases/download/v1.0.0/whale-ask-server-v1.0.0-macos-x86_64.tar.gz"
    sha256 "PLACEHOLDER_INTEL_SHA256"
  end

  on_arm do
    url "https://github.com/whalesea1314/whale-interactive-feedback/releases/download/v1.0.0/whale-ask-server-v1.0.0-macos-aarch64.tar.gz"
    sha256 "PLACEHOLDER_ARM_SHA256"
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
