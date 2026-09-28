class Oswg < Formula
  desc "Oddly Specific Wordlist Generator"
  homepage "https://github.com/dmarakom6/oswg"
  version "0.8.3"
  license "MIT"
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dmarakom6/oswg/releases/download/v0.8.3/oswg-macos-x86_64"
      sha256 "ce5e3797abee2307fe8c6af9bfb945da541ce095b6f2f84e7385a9cf2defefa2"
    else
      url "https://github.com/dmarakom6/oswg/releases/download/v0.8.3/oswg-macos-arm64"
      sha256 "2f3c0f1f17e7c71a1f7b39d47437b15bdde73513e980755b7f82d9b940b95f07"
    end
  end
  def install
    if Hardware::CPU.intel?
      bin.install "oswg-macos-x86_64" => "oswg"
    else
      bin.install "oswg-macos-arm64" => "oswg"
    end
  end
  test do
    system "#{bin}/oswg", "--help"
  end
end
