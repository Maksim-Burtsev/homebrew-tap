class Merl < Formula
  desc "Read-only code navigator for the terminal"
  homepage "https://github.com/Maksim-Burtsev/merl"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.2.0/merl-aarch64-apple-darwin.tar.gz"
      sha256 "9ef4acc2c330e0be9f2dd25908831430ecccda7d69125a09f7f0719a6cdd1a7c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.2.0/merl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2a713b93b40ceda8b0393a0deaf1fab7284e175bf03577c796fba3c8a793ec9d"
    end
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.2.0/merl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "675ae731e756483599ba3894ec5cd785f81f69c7ab0f09f0603f988bf30c0589"
    end
  end

  def install
    bin.install "merl"
  end

  test do
    assert_match "merl 0.2.0", shell_output("#{bin}/merl --version")
  end
end
