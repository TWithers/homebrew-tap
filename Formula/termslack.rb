class Termslack < Formula
  desc "Terminal Slack client: read and write in your channels and DMs from the keyboard"
  homepage "https://github.com/TWithers/termslack"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TWithers/termslack/releases/download/v0.4.1/termslack-0.4.1-darwin-arm64.tar.gz"
      sha256 "ab5714597e9eade5c335d08716b633bf174fb6228ed8e0677fef4cd410d4182a"
    end

    on_intel do
      url "https://github.com/TWithers/termslack/releases/download/v0.4.1/termslack-0.4.1-darwin-x64.tar.gz"
      sha256 "4b4d4ef5fc2f69c70ebc0e0f3f031e91260ac0bd2220b2caed7f51fe2fa53752"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TWithers/termslack/releases/download/v0.4.1/termslack-0.4.1-linux-arm64.tar.gz"
      sha256 "9241c64723a5c53e970afe1652fd32b884fc0a3f07435231609079bc9425c71c"
    end

    on_intel do
      url "https://github.com/TWithers/termslack/releases/download/v0.4.1/termslack-0.4.1-linux-x64.tar.gz"
      sha256 "5467276303c7fbce6bb83781ac2b289284b33bd0e6d8de4f0a62877644301282"
    end
  end

  def install
    bin.install "termslack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/termslack --version")
  end
end
