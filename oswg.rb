class Oswg < Formula
  desc "Oddly Specific Wordlist Generator"
  homepage "https://github.com/dmarakom6/oswg"
  version "0.8.2"
  license "MIT"
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dmarakom6/oswg/releases/download/v0.8.2/oswg-macos-x86_64"
      sha256 "99eec5aeda5222759074abf3dbc5583df1fa8bf3d41319511d6afc761a179bb3"
    else
      url "https://github.com/dmarakom6/oswg/releases/download/v0.8.2/oswg-macos-arm64"
      sha256 "99eec5aeda5222759074abf3dbc5583df1fa8bf3d41319511d6afc761a179bb3"
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
