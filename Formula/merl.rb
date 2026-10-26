class Merl < Formula
  desc "Keyboard-only code navigator for the terminal"
  homepage "https://github.com/Maksim-Burtsev/merl"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.10.0/merl-aarch64-apple-darwin.tar.gz"
      sha256 "45572f4916404171321a48758aef029f85c90f01be078460d044616f411bd0f9"
    end
    on_intel do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.10.0/merl-x86_64-apple-darwin.tar.gz"
      sha256 "2a1ed7894c0121b367174db0dc9047505df61c4b550fcb3c872f10900bf09be8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.10.0/merl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dda99ef81469ba3f458bbd2771f6df5681dad769029131f1a633ba557a610081"
    end
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.10.0/merl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "da81bfa9c659cbe44743e54316441c0c6b9a455b8558b97541c589db3c4c8d9b"
    end
  end

  def install
    bin.install "merl"
  end

  test do
    assert_match "merl 0.10.0", shell_output("#{bin}/merl --version")
  end
end
