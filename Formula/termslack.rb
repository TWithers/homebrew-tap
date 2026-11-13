class Termslack < Formula
  desc "Terminal Slack client: read and write in your channels and DMs from the keyboard"
  homepage "https://github.com/TWithers/termslack"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TWithers/termslack/releases/download/v0.1.0/termslack-0.1.0-darwin-arm64.tar.gz"
      sha256 "0082553426fb8882a555593ddc97fe33043d2aad762a2e9c1795a6bda1d7ef2a"
    end

    on_intel do
      url "https://github.com/TWithers/termslack/releases/download/v0.1.0/termslack-0.1.0-darwin-x64.tar.gz"
      sha256 "2444dc1133cd350d3408fb0133ff47982bc87e1b72b6eeaffdd43c12d56df9f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TWithers/termslack/releases/download/v0.1.0/termslack-0.1.0-linux-arm64.tar.gz"
      sha256 "a171bfdf1a4e594a2cbb0b3c1a5e9fd2c226c66e57f70596326696eb0501aac6"
    end

    on_intel do
      url "https://github.com/TWithers/termslack/releases/download/v0.1.0/termslack-0.1.0-linux-x64.tar.gz"
      sha256 "c30c3c40c37b7774329e54b4ec7a8a3b9e8b571e56c2bd54fa932219a6e44f51"
    end
  end

  def install
    bin.install "termslack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/termslack --version")
  end
end
