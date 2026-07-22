class Cc2 < Formula
  desc "Claude 官网多账号并行/轮询工具 (默认账号永远垫底)"
  homepage "https://github.com/TITOCHAN2023/claude-multi-acct"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.3.0/cc2-darwin-arm64"
      sha256 "7fc577adc1a7499097ae72d4bf20a040e87925549cc1a9d9ff16feb75a59316d"
    end
    on_intel do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.3.0/cc2-darwin-amd64"
      sha256 "3194c8e7cadee95514d7640c7aca2daf3e9eec6c6aeea0ae0344f882a48f158c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.3.0/cc2-linux-arm64"
      sha256 "644972b6bd89d92f89f644e7b985706424886ec3deec9cf13be38a101608007d"
    end
    on_intel do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.3.0/cc2-linux-amd64"
      sha256 "ab9a32702a56302b3b061dbec5b92884b28c901b3f97f875434c71200ee6668b"
    end
  end

  def install
    bin.install Dir["cc2-*"].first => "cc2"
  end

  test do
    assert_match "cc2", shell_output("#{bin}/cc2 help")
  end
end
