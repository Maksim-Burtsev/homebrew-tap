class Merl < Formula
  desc "Read-only code navigator for the terminal"
  homepage "https://github.com/Maksim-Burtsev/merl"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.1.1/merl-aarch64-apple-darwin.tar.gz"
      sha256 "0ba4cf2f954ecdc4e6ca7aea21ea462ab54d019f7176dc522de716eb6ef55fe2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.1.1/merl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a1f23f9df040898ef862630cfc11447d46aeee0e3109f3e2d7ebbb212bba46f5"
    end
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.1.1/merl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6363d753c4d2699711996cbd5649b2cc137075968bdc4b9e5a4cf6a9fb026cb2"
    end
  end

  def install
    bin.install "merl"
  end

  test do
    assert_match "merl 0.1.1", shell_output("#{bin}/merl --version")
  end
end
