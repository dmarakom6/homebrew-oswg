class Oswg < Formula
  desc "Oddly Specific Wordlist Generator"
  homepage "https://github.com/dmarakom6/oswg"
  version "0.8.1"
  license "MIT"
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dmarakom6/oswg/releases/download/v0.8.1/oswg-macos-x86_64"
      sha256 "cbe1ad24b58ec14b333b9006d84286cff67ccbb5e7f15c131ef5b7f7205cbb70"
    else
      url "https://github.com/dmarakom6/oswg/releases/download/v0.8.1/oswg-macos-arm64"
      sha256 "cbe1ad24b58ec14b333b9006d84286cff67ccbb5e7f15c131ef5b7f7205cbb70"
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
