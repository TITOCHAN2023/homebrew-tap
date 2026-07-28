class Cc2 < Formula
  desc "Claude 官网多账号并行/轮询工具 (默认账号永远垫底)"
  homepage "https://github.com/TITOCHAN2023/claude-multi-acct"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.7.0/cc2-darwin-arm64"
      sha256 "f77dfa60c4d44b3a4cf648fb39f92055e26f6ae30276ac5a5fd04d06b66dca69"
    end
    on_intel do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.7.0/cc2-darwin-amd64"
      sha256 "0dbc82d0d827374c52e692c8246243cd3a690e76b20ec3b71425cf6011aa1370"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.7.0/cc2-linux-arm64"
      sha256 "6c742c0ff4d0af171716d2feb858550ead45002c721f707200abfcb1664454bd"
    end
    on_intel do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.7.0/cc2-linux-amd64"
      sha256 "ae11eaae45245e2917e6a68f5e82cfd63f65c9e470c7b4a2ae4197d175436293"
    end
  end

  def install
    bin.install Dir["cc2-*"].first => "cc2"
  end

  test do
    assert_match "cc2", shell_output("#{bin}/cc2 help")
  end
end
