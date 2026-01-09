class WhaleAskServer < Formula
  desc "Whale Interactive Feedback MCP Server - AI-powered interactive feedback tool"
  homepage "https://github.com/whalesea1314/whale-interactive-feedback"
  version "1.0.0"
  license "MIT"

  on_intel do
    url "https://github.com/whalesea1314/whale-interactive-feedback/releases/download/v1.0.0/whale-ask-server-v1.0.0-macos-x86_64.tar.gz"
    sha256  "96e360ce562aa116b138d819ca01da63e816c6c2aec3370e6e99746fe94bf4a0"
  end

  on_arm do
    url "https://github.com/whalesea1314/whale-interactive-feedback/releases/download/v1.0.0/whale-ask-server-v1.0.0-macos-aarch64.tar.gz"
    sha256  "39bb5ca20bfa4ec27e816f29035223a15c5490ae524c0c3d4b592e922d0eecfb"
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
