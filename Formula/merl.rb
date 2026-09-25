class Merl < Formula
  desc "Keyboard-only code navigator for the terminal"
  homepage "https://github.com/Maksim-Burtsev/merl"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.7.0/merl-aarch64-apple-darwin.tar.gz"
      sha256 "ead3e46bfb9097ec7eaff34a6d5192af17b2a1d048857235a242c5039ce6586a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.7.0/merl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d2f305961b58da946428b4fcca97875aad35c5cd2c1c5537a93e39c30b7187d3"
    end
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.7.0/merl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "22863e496d3ea2f34b9332eb11d2313cc3db67559e24f50dd34885607e61ca67"
    end
  end

  def install
    bin.install "merl"
  end

  test do
    assert_match "merl 0.7.0", shell_output("#{bin}/merl --version")
  end
end
