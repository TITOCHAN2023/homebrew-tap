class Cc2 < Formula
  desc "Claude 官网多账号并行/轮询工具 (默认账号永远垫底)"
  homepage "https://github.com/TITOCHAN2023/claude-multi-acct"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.5.1/cc2-darwin-arm64"
      sha256 "343693a573072e17e2e82d00366bd0094bb117c5b4d6c3bc70f0ed498fc1002e"
    end
    on_intel do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.5.1/cc2-darwin-amd64"
      sha256 "529532f85e80002c66695a9bfee462f36aeeeecd1c9fbfe7e62309bf9964d275"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.5.1/cc2-linux-arm64"
      sha256 "b9d5c5420de56db835c2c01f97b9da5a1be9776d3f6f0d475308de6865da11b1"
    end
    on_intel do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.5.1/cc2-linux-amd64"
      sha256 "e977923ab68ac54ba1237aa2d9b6c13f76725a2973f530330a48e208964effd3"
    end
  end

  def install
    bin.install Dir["cc2-*"].first => "cc2"
  end

  test do
    assert_match "cc2", shell_output("#{bin}/cc2 help")
  end
end
