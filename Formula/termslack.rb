class Termslack < Formula
  desc "Terminal Slack client: read and write in your channels and DMs from the keyboard"
  homepage "https://github.com/TWithers/termslack"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TWithers/termslack/releases/download/v0.4.0/termslack-0.4.0-darwin-arm64.tar.gz"
      sha256 "2ecf3d3c325d9afca33808064e9da425ce2fb4be81219406ea222fbfb6028533"
    end

    on_intel do
      url "https://github.com/TWithers/termslack/releases/download/v0.4.0/termslack-0.4.0-darwin-x64.tar.gz"
      sha256 "1f78947afcac07e9bb0534d5d2ba311fff34c7aed130417fd890a848939fc2c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TWithers/termslack/releases/download/v0.4.0/termslack-0.4.0-linux-arm64.tar.gz"
      sha256 "06a115d4a4fcfe67360cc94fe818ce2e4e9a71a186a12168ce61fc85b9eff045"
    end

    on_intel do
      url "https://github.com/TWithers/termslack/releases/download/v0.4.0/termslack-0.4.0-linux-x64.tar.gz"
      sha256 "05bad2a7cc344b013d7e8a5ed527893b0775a0d95bb757a8acdc5ca296a00a4b"
    end
  end

  def install
    bin.install "termslack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/termslack --version")
  end
end
