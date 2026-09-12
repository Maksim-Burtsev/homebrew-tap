class Merl < Formula
  desc "Read-only code navigator for the terminal"
  homepage "https://github.com/Maksim-Burtsev/merl"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.1.0/merl-aarch64-apple-darwin.tar.gz"
      sha256 "887281b332c25a9248af1766ba98ae9b1d31809dd3b4cef3e7a0c078b108ca7f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.1.0/merl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ebb3698688fcca1e995744d30fb8169f87ae4c973d79f1c1456ce63b944ec90b"
    end
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.1.0/merl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "01c2dd07b4bccc61ecf9d5151f45e114cafb52485e12848c12da79321610102c"
    end
  end

  def install
    bin.install "merl"
  end

  test do
    assert_match "merl 0.1.0", shell_output("#{bin}/merl --version")
  end
end
