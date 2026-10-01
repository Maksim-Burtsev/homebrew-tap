class Merl < Formula
  desc "One editor for when agents write the code: read, review, fix a line"
  homepage "https://github.com/Maksim-Burtsev/merl"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.8.0/merl-aarch64-apple-darwin.tar.gz"
      sha256 "841bd7ad16557be803a79e79336011d328b17fc3edd6cecc07b909a4729f7729"
    end
    on_intel do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.8.0/merl-x86_64-apple-darwin.tar.gz"
      sha256 "9a4e85bda45318a9622354a87bd64eee6ff02add1481347148838d939ebd5ac0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.8.0/merl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "748b9d2eb8f266371a22b750b52c4bcfef7ef25a323f615485b2544bcbf67c5d"
    end
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.8.0/merl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1fafa921b1a4e742af2d5de8e6c2dc95d36a9b9f8ac3ba1c78fef55b17d5ecf2"
    end
  end

  def install
    bin.install "merl"
  end

  test do
    assert_match "merl 0.8.0", shell_output("#{bin}/merl --version")
  end
end
