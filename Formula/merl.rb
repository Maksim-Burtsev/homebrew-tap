class Merl < Formula
  desc "One editor for when agents write the code: read, review, fix a line"
  homepage "https://github.com/Maksim-Burtsev/merl"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.8.1/merl-aarch64-apple-darwin.tar.gz"
      sha256 "d74ab9711beb487cd1764aef4f7601b6e7559aa0741b45bc25ab9538984e72f5"
    end
    on_intel do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.8.1/merl-x86_64-apple-darwin.tar.gz"
      sha256 "96d67d44704c1cb5f16ce8ea21c2777ff5af79076f576044bf3feef41eb2a076"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.8.1/merl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd392e38044e221335dc40e79377b568e748d05da3d992fc0ac4e7598e1f6ebb"
    end
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.8.1/merl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3650f3da01f956f3264dee9ef734f929df870c3bb5456bdaad3365f44a51b165"
    end
  end

  def install
    bin.install "merl"
  end

  test do
    assert_match "merl 0.8.1", shell_output("#{bin}/merl --version")
  end
end
