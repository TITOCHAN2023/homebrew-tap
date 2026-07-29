class Cc2 < Formula
  desc "Claude 官网多账号并行/轮询工具 (默认账号永远垫底)"
  homepage "https://github.com/TITOCHAN2023/claude-multi-acct"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.7.1/cc2-darwin-arm64"
      sha256 "2e94f8065d27c0eeb4970a52e9e07b5a600ccd53327502969855d0bed95d696e"
    end
    on_intel do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.7.1/cc2-darwin-amd64"
      sha256 "24e463eefa34f75bd4a6798e480064f7e6bde4659b43e3eac396854ad60cfc13"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.7.1/cc2-linux-arm64"
      sha256 "b69d5c90f9f97a749e095edf31559ca7d492946fd61df5b1e01bc768ce492859"
    end
    on_intel do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.7.1/cc2-linux-amd64"
      sha256 "e0b56110fb7735ff93028a943aa834c8f394d92ebf45e72aeb228c42b8d0537a"
    end
  end

  def install
    bin.install Dir["cc2-*"].first => "cc2"
  end

  test do
    assert_match "cc2", shell_output("#{bin}/cc2 help")
  end
end
