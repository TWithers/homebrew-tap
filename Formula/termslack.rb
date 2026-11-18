class Termslack < Formula
  desc "Terminal Slack client: read and write in your channels and DMs from the keyboard"
  homepage "https://github.com/TWithers/termslack"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TWithers/termslack/releases/download/v0.3.0/termslack-0.3.0-darwin-arm64.tar.gz"
      sha256 "ab8fac20e4822939e48d43e68713451336def3ff70592b7ec0f0f5230c527a26"
    end

    on_intel do
      url "https://github.com/TWithers/termslack/releases/download/v0.3.0/termslack-0.3.0-darwin-x64.tar.gz"
      sha256 "dca50bf82801ce9c05775f6ea48beb3168697d058af3aff586c530806b7acd9d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TWithers/termslack/releases/download/v0.3.0/termslack-0.3.0-linux-arm64.tar.gz"
      sha256 "34fb5f9cdbaa8fe2be438760758d3c8ea7b55a2f4ad06712411f885485f99ac1"
    end

    on_intel do
      url "https://github.com/TWithers/termslack/releases/download/v0.3.0/termslack-0.3.0-linux-x64.tar.gz"
      sha256 "d11a6f325d5ed8d325fb15dbb3b9d80dce1233ee0044af1c85c613be795bd4a5"
    end
  end

  def install
    bin.install "termslack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/termslack --version")
  end
end
