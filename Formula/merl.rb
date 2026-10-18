class Merl < Formula
  desc "Keyboard-only code navigator for the terminal"
  homepage "https://github.com/Maksim-Burtsev/merl"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.9.0/merl-aarch64-apple-darwin.tar.gz"
      sha256 "8ded5a92e6d944b0bf59bce2282906bc3fe3db8f7209a7ae3708605209eac336"
    end
    on_intel do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.9.0/merl-x86_64-apple-darwin.tar.gz"
      sha256 "af9578ad45606e789cde1dd220510b03ff662cfee489fe7c813c6d999be94bae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.9.0/merl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1652d1c1c2751ffa77b1294be37fcabdfb6bddb3b6ffe6c6a68cdb4490a6cd50"
    end
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.9.0/merl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ed9dec6a65b100c65859a8f14d80ed4260f9fb205e82da515a2188723bc86bb8"
    end
  end

  def install
    bin.install "merl"
  end

  test do
    assert_match "merl 0.9.0", shell_output("#{bin}/merl --version")
  end
end
