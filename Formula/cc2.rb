class Cc2 < Formula
  desc "Claude 官网多账号并行/轮询工具 (默认账号永远垫底)"
  homepage "https://github.com/TITOCHAN2023/claude-multi-acct"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.5.0/cc2-darwin-arm64"
      sha256 "ea81359c706eea12d6c8359d0afdb2908e38d11b366ba4af430ceff2b02f78a0"
    end
    on_intel do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.5.0/cc2-darwin-amd64"
      sha256 "82d1ac8856ace02002584a9eadda072255ebed2682db34ebfd6df15af6b7a985"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.5.0/cc2-linux-arm64"
      sha256 "4865c0794c36dc5e053dffd0d34749f4042064f59415ecb251dbe5b455a8c716"
    end
    on_intel do
      url "https://github.com/TITOCHAN2023/claude-multi-acct/releases/download/v0.5.0/cc2-linux-amd64"
      sha256 "0b4e320ae3ff50faf66df65751c4e9ce5640896d50b2d3ddf227dcd38e69ede3"
    end
  end

  def install
    bin.install Dir["cc2-*"].first => "cc2"
  end

  test do
    assert_match "cc2", shell_output("#{bin}/cc2 help")
  end
end
