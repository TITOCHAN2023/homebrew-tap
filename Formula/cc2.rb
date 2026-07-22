class Cc2 < Formula
  desc "Claude 官网多账号并行/轮询工具 (默认账号永远垫底)"
  homepage "https://github.com/TITOCHAN2023/claude-multi-acct"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.1.0/cc2-darwin-arm64"
      sha256 "9c63d77ce780c31efab8de7e9a01eee6627945c0f85b8c917eb03814385eefc4"
    end
    on_intel do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.1.0/cc2-darwin-amd64"
      sha256 "a009e5c90efd29e9d13cfe76d80fdf299d88d8e275a4e1c5b28f466d22c5e9b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.1.0/cc2-linux-arm64"
      sha256 "316fdbb7198f509ce408230683532627753c689b1ce651a5a77893d6604c1869"
    end
    on_intel do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.1.0/cc2-linux-amd64"
      sha256 "0c456f37b4785793691fc318e36183cf68ce87fc006130776b04d96d8a627476"
    end
  end

  def install
    bin.install Dir["cc2-*"].first => "cc2"
  end

  test do
    assert_match "cc2", shell_output("#{bin}/cc2 help")
  end
end
