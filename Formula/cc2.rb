class Cc2 < Formula
  desc "Claude 官网多账号并行/轮询工具 (默认账号永远垫底)"
  homepage "https://github.com/TITOCHAN2023/claude-multi-acct"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.6.0/cc2-darwin-arm64"
      sha256 "efe33dc0680ad4996992cf03dc80c21c054a4f37d3d88fdf34af6837f3dd2ff0"
    end
    on_intel do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.6.0/cc2-darwin-amd64"
      sha256 "28b1b8d4c42fdc2cba8dcc68493e10f88c65050d6855e7549b4089dc72c325c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.6.0/cc2-linux-arm64"
      sha256 "4a5d48f7c28dc107c966bce1abe981d727a6f37b3dea07b5561e695daa169cc2"
    end
    on_intel do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.6.0/cc2-linux-amd64"
      sha256 "bf6e79a2603f08b948c578fb05eccfbe90daf11ffd0155035a28cc3ae8fcceb7"
    end
  end

  def install
    bin.install Dir["cc2-*"].first => "cc2"
  end

  test do
    assert_match "cc2", shell_output("#{bin}/cc2 help")
  end
end
