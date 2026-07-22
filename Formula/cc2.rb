class Cc2 < Formula
  desc "Claude 官网多账号并行/轮询工具 (默认账号永远垫底)"
  homepage "https://github.com/TITOCHAN2023/claude-multi-acct"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.4.1/cc2-darwin-arm64"
      sha256 "b2e8cbc61f59617b630d2ff03cc95bc50f07b363bebb3b1bc50d180591bf3813"
    end
    on_intel do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.4.1/cc2-darwin-amd64"
      sha256 "2df59184fcb61cf8ca9ec1bb8d50d73917866aeaa9aabd5bd6466ec19842b74b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.4.1/cc2-linux-arm64"
      sha256 "9f3e676e4c601edea55bf2e0b64f7f80b9dac916ad31701c17a481f48d790af6"
    end
    on_intel do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.4.1/cc2-linux-amd64"
      sha256 "a237889aad6e26e38810ad9d60da8f3cb1549af507c93d6ee88126a4dd44135b"
    end
  end

  def install
    bin.install Dir["cc2-*"].first => "cc2"
  end

  test do
    assert_match "cc2", shell_output("#{bin}/cc2 help")
  end
end
