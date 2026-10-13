class Merl < Formula
  desc "Keyboard-only code navigator for the terminal"
  homepage "https://github.com/Maksim-Burtsev/merl"
  version "0.8.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.8.5/merl-aarch64-apple-darwin.tar.gz"
      sha256 "f7316d450abd4318786e408051bac74f371042db452f106d26e85375a5bbaa4f"
    end
    on_intel do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.8.5/merl-x86_64-apple-darwin.tar.gz"
      sha256 "a83a39e3ba195b97bf938eeb9560e1be675b92f1c960f3d881707cca4d1cf9db"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.8.5/merl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "38b3b15d47c0b16c60cc6f679e836b0b127e9ff191650253b8d713e7e44c7c4f"
    end
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.8.5/merl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "945cbd8ba2aa690d305f14b69c1ac0973350568a9d66da2ac8011c01f410fb7f"
    end
  end

  def install
    bin.install "merl"
  end

  test do
    assert_match "merl 0.8.5", shell_output("#{bin}/merl --version")
  end
end
