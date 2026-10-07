class Merl < Formula
  desc "Keyboard-only code navigator for the terminal"
  homepage "https://github.com/Maksim-Burtsev/merl"
  version "0.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.8.3/merl-aarch64-apple-darwin.tar.gz"
      sha256 "e6a156489ed8bfcce97bc64821b8fe2cf2663643eab8fba49b83e7cf2a731afc"
    end
    on_intel do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.8.3/merl-x86_64-apple-darwin.tar.gz"
      sha256 "bf4e37c723536555a86550147e3eae1a4e7143191fcab4443eac45f201e1f4fe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.8.3/merl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4fa85501bd814d815815e021b1b790bc2d784cc6e744e846db735aeb7633bc25"
    end
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.8.3/merl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a45873ed3b67a720819b79964bfe5291288217e30ab6d3997616f3d64f698362"
    end
  end

  def install
    bin.install "merl"
  end

  test do
    assert_match "merl 0.8.3", shell_output("#{bin}/merl --version")
  end
end
