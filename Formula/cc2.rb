class Cc2 < Formula
  desc "Claude 官网多账号并行/轮询工具 (默认账号永远垫底)"
  homepage "https://github.com/TITOCHAN2023/claude-multi-acct"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.2.1/cc2-darwin-arm64"
      sha256 "7cbb0200bb1f285746ef89d32d1d4836d51fb193bde03f96abc10b5ef11ba859"
    end
    on_intel do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.2.1/cc2-darwin-amd64"
      sha256 "825013d8fead38ce682444f403ad17bbd74b0ee2c8388d4f51fb84f75a35f9c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.2.1/cc2-linux-arm64"
      sha256 "80ccb52ba37e9b106e8859c03fb74345cea8d4ea3d04429b9154bbd8b61d1dcf"
    end
    on_intel do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.2.1/cc2-linux-amd64"
      sha256 "cbb66e7adc3389a9c9b9c1016b8f79a1fead3ad0a9bc0bf08f20fd011e6d835b"
    end
  end

  def install
    bin.install Dir["cc2-*"].first => "cc2"
  end

  test do
    assert_match "cc2", shell_output("#{bin}/cc2 help")
  end
end
