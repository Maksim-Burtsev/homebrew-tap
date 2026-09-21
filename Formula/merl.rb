class Merl < Formula
  desc "Keyboard-only code navigator for the terminal"
  homepage "https://github.com/Maksim-Burtsev/merl"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.6.0/merl-aarch64-apple-darwin.tar.gz"
      sha256 "4055445108d5ef4336336ee02b55dd656ff30a3b77e4adcc5a3687c60f940788"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.6.0/merl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0f96628e9e5b596e93534a54c0bfa963f91c540a6166fffc7123f80b375f0b47"
    end
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.6.0/merl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b3ab180637db2f1746117cdc113c47c835448a0380a1ac2fac2208d0c04c8859"
    end
  end

  def install
    bin.install "merl"
  end

  test do
    assert_match "merl 0.6.0", shell_output("#{bin}/merl --version")
  end
end
