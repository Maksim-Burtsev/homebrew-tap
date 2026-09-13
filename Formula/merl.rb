class Merl < Formula
  desc "Read-only code navigator for the terminal"
  homepage "https://github.com/Maksim-Burtsev/merl"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.3.0/merl-aarch64-apple-darwin.tar.gz"
      sha256 "fc3affc4c92ef62cd56a4e2ace9d7f91f6de69d1dbae5bd82063415fbc4ad8a5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.3.0/merl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3458970454db561003e1cd424f99953cb04c687bbc954329859e040bbc21136e"
    end
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.3.0/merl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "788ee6b153306176ca70f1312dfd6c627676b6027372a174935505971247b38f"
    end
  end

  def install
    bin.install "merl"
  end

  test do
    assert_match "merl 0.3.0", shell_output("#{bin}/merl --version")
  end
end
