# Homebrew Tap for Whale Interactive Feedback

This is the official Homebrew tap for [Whale Interactive Feedback MCP Server](https://github.com/whalesea1314/whale-interactive-feedback).

## Installation

```bash
# Add the tap
brew tap whalesea1314/whale-interactive-feedback

# Install
brew install whale-ask-server
```

## Usage

After installation, configure your MCP client (Kiro, Cursor, Claude Desktop):

```json
{
  "mcpServers": {
    "whale-interactive-feedback": {
      "command": "/opt/homebrew/bin/whale-ask-server"
    }
  }
}
```

## Update

```bash
brew upgrade whale-ask-server
```

## Uninstall

```bash
brew uninstall whale-ask-server
brew untap whalesea1314/whale-interactive-feedback
```

## License

MIT
