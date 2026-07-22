class Cc2 < Formula
  desc "Claude 官网多账号并行/轮询工具 (默认账号永远垫底)"
  homepage "https://github.com/TITOCHAN2023/claude-multi-acct"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.4.0/cc2-darwin-arm64"
      sha256 "25d7c20ae1ba78fb1399aecccd62be65c27dc62276e507198e1300e1d7ac9f5f"
    end
    on_intel do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.4.0/cc2-darwin-amd64"
      sha256 "62b5ba30243194addd6f1659f7411d11b574bec9313dc16d53aaa117161dea93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.4.0/cc2-linux-arm64"
      sha256 "d8bcf8ed50c8ec27ecae60592adaec96773a0639c761ff18d4e50baf1d993d82"
    end
    on_intel do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.4.0/cc2-linux-amd64"
      sha256 "b28ae489669fd732ce135580a5012ea1c37bfb8d58dc7359b2047b709d65ef0e"
    end
  end

  def install
    bin.install Dir["cc2-*"].first => "cc2"
  end

  test do
    assert_match "cc2", shell_output("#{bin}/cc2 help")
  end
end
