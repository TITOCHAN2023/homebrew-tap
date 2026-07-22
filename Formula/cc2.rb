class Cc2 < Formula
  desc "Claude 官网多账号并行/轮询工具 (默认账号永远垫底)"
  homepage "https://github.com/TITOCHAN2023/claude-multi-acct"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.2.0/cc2-darwin-arm64"
      sha256 "1d3004bb8d4553ea18b1361e0f72945089d6d926da105ccaec28eeb0b002a31c"
    end
    on_intel do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.2.0/cc2-darwin-amd64"
      sha256 "4dc513779d0fed9fbf3b4b8d0d3aebb089e51e8a7d18bb6dc4b9aad8600779ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.2.0/cc2-linux-arm64"
      sha256 "597a701e0fc282cc4aa69ff15b92842d665a3e36c1da773603ded73874e0db5b"
    end
    on_intel do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.2.0/cc2-linux-amd64"
      sha256 "2ca35ced8f3db4e06f029dda9f1c135205d9cec2807668f09d258383fff9862d"
    end
  end

  def install
    bin.install Dir["cc2-*"].first => "cc2"
  end

  test do
    assert_match "cc2", shell_output("#{bin}/cc2 help")
  end
end
