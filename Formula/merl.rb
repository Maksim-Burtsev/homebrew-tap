class Merl < Formula
  desc "Read-only code navigator for the terminal"
  homepage "https://github.com/Maksim-Burtsev/merl"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.4.0/merl-aarch64-apple-darwin.tar.gz"
      sha256 "7fa5183a6c85f71f337aab5c026ac6e2cfbf55e4501bc7ee4aa6577877f2c2ac"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.4.0/merl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5867fdf20fb23be8625052564f77feb47c168944bdc40cdcdc99b58a6e0fbffa"
    end
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.4.0/merl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1fb0086ad2e490a0e4cdacc7ad02725f2ebe36438407fd504742dcbdee8fdc11"
    end
  end

  def install
    bin.install "merl"
  end

  test do
    assert_match "merl 0.4.0", shell_output("#{bin}/merl --version")
  end
end
