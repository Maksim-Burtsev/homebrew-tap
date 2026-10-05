class Merl < Formula
  desc "Terminal code navigator: read a project, review a branch, fix a line"
  homepage "https://github.com/Maksim-Burtsev/merl"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.8.2/merl-aarch64-apple-darwin.tar.gz"
      sha256 "c0eb8226442d21ca13e685a274a97a0337838bc1bdb0b06594d7c283874a55de"
    end
    on_intel do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.8.2/merl-x86_64-apple-darwin.tar.gz"
      sha256 "62356b9f7e8b06b05909da6dc1b33e52d977c026d3a7dc2e295f2a6a651f50d6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.8.2/merl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e81f6bf3ac64dbb076e9a0c6925fcbe342416fa967251f9de1dcd48e158272bf"
    end
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.8.2/merl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "60c923e2ff88b0c6351b718dd5dd1d0b4e083a5865f3bc07085bf0641a994301"
    end
  end

  def install
    bin.install "merl"
  end

  test do
    assert_match "merl 0.8.2", shell_output("#{bin}/merl --version")
  end
end
