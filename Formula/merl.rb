class Merl < Formula
  desc "Keyboard-only code navigator for the terminal"
  homepage "https://github.com/Maksim-Burtsev/merl"
  version "0.8.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.8.4/merl-aarch64-apple-darwin.tar.gz"
      sha256 "ea1dbe894f206f5ecef5452d06f7d70a9e02dbbaebe260f3bcdad9d916884af1"
    end
    on_intel do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.8.4/merl-x86_64-apple-darwin.tar.gz"
      sha256 "783f7803ba4662e61420074dffe7c4b4faff4552fce683d4e75183126e47ec5c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.8.4/merl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a7e7bf62d44fffc97683e7a4a8a92ea8cd07b724bdc482d2d96b69ab14f096bc"
    end
    on_arm do
      url "https://github.com/Maksim-Burtsev/merl/releases/download/v0.8.4/merl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a496ffe4ea059ba000a8c36170b22134c4fa65bfbcae5b8355fb71225074bf9d"
    end
  end

  def install
    bin.install "merl"
  end

  test do
    assert_match "merl 0.8.4", shell_output("#{bin}/merl --version")
  end
end
