class Merl < Formula
  desc "Keyboard-only code navigator for the terminal"
  homepage "https://github.com/Maksim-Burtsev/merl"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.5.0/merl-aarch64-apple-darwin.tar.gz"
      sha256 "3c0a1e49c0e8f6c41127c9102aafef8eed5ed176adef7c4b6d69a2ad31deaef0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.5.0/merl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "29b26d9c8792dc87e125a5402508f863b7a40d3df05043ea54e8434c570ffe1b"
    end
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.5.0/merl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7deec00d6a34a57dcacca801dcd14425ba013d9117fe5adc96f5b6badaece322"
    end
  end

  def install
    bin.install "merl"
  end

  test do
    assert_match "merl 0.5.0", shell_output("#{bin}/merl --version")
  end
end
