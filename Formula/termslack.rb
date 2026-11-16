class Termslack < Formula
  desc "Terminal Slack client: read and write in your channels and DMs from the keyboard"
  homepage "https://github.com/TWithers/termslack"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TWithers/termslack/releases/download/v0.2.0/termslack-0.2.0-darwin-arm64.tar.gz"
      sha256 "e25641455ab13fbb625015aa4f7218fc50b4f06e7545b83f0817f55be1b87070"
    end

    on_intel do
      url "https://github.com/TWithers/termslack/releases/download/v0.2.0/termslack-0.2.0-darwin-x64.tar.gz"
      sha256 "616684b548643cf87f99d5247e2baf4ce6be868cc9b94808f2ceae157b32f4e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TWithers/termslack/releases/download/v0.2.0/termslack-0.2.0-linux-arm64.tar.gz"
      sha256 "51e23926494d1526e54f09746aaeb0ee06a42d0d9862fda3a7ff19d3cc55d33d"
    end

    on_intel do
      url "https://github.com/TWithers/termslack/releases/download/v0.2.0/termslack-0.2.0-linux-x64.tar.gz"
      sha256 "8783ddfb336060db60fe6b58a90fb055e4184991285f5947c198b3814ebd07f4"
    end
  end

  def install
    bin.install "termslack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/termslack --version")
  end
end
