class Cc2 < Formula
  desc "Claude 官网多账号并行/轮询工具 (默认账号永远垫底)"
  homepage "https://github.com/TITOCHAN2023/claude-multi-acct"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.2.2/cc2-darwin-arm64"
      sha256 "e1e5b43e5497bef4deafd7e367ea3c16ff0295b37d869e0bf24609576e43d4ce"
    end
    on_intel do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.2.2/cc2-darwin-amd64"
      sha256 "282b6bfa1bb9507422c5068b74e658980c58466112408cda42e1e69c8ab5d639"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.2.2/cc2-linux-arm64"
      sha256 "3ca64e8cfca39185a859d4ee59cff2438a3b1973e93f691461941d03af69c1de"
    end
    on_intel do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.2.2/cc2-linux-amd64"
      sha256 "2a2bdbe2182083e3ba65adfea5e7adb8dab11e1070a1a1be3e251cd5dd87ad87"
    end
  end

  def install
    bin.install Dir["cc2-*"].first => "cc2"
  end

  test do
    assert_match "cc2", shell_output("#{bin}/cc2 help")
  end
end
