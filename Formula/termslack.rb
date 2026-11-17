class Termslack < Formula
  desc "Terminal Slack client: read and write in your channels and DMs from the keyboard"
  homepage "https://github.com/TWithers/termslack"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TWithers/termslack/releases/download/v0.2.1/termslack-0.2.1-darwin-arm64.tar.gz"
      sha256 "bdac9c266054365364d30a6a46499639d4985b138db454a8b8a82c6f302a71a7"
    end

    on_intel do
      url "https://github.com/TWithers/termslack/releases/download/v0.2.1/termslack-0.2.1-darwin-x64.tar.gz"
      sha256 "9c0d0f95d572beb4f8ae420e89ef6e004ba9e659396202bf4c826da08596f7b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TWithers/termslack/releases/download/v0.2.1/termslack-0.2.1-linux-arm64.tar.gz"
      sha256 "e18567cea39e8348889fa37b21ea9eaf7414928ffee8e6ea995bde53f272c096"
    end

    on_intel do
      url "https://github.com/TWithers/termslack/releases/download/v0.2.1/termslack-0.2.1-linux-x64.tar.gz"
      sha256 "fa4f651adf2ddb48f1e0eb891a1e3ae34e5771b024fc7087e38199e42b78cce7"
    end
  end

  def install
    bin.install "termslack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/termslack --version")
  end
end
