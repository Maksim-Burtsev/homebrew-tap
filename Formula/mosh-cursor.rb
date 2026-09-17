class MoshCursor < Formula
  desc "Remote terminal application, with cursor shape (DECSCUSR) pass-through"
  homepage "https://mosh.org"
  # mobile-shell/mosh#1355 "Cursor shape support". Stock mosh drops `CSI Ps SP q`, so a program
  # that switches block/bar by mode shows one shape over mosh. Both ends need this build.
  # Drop this formula and go back to `mosh` once a release includes the PR.
  url "https://github.com/dabeibao/mosh.git",
      revision: "4ead8960e399d2e8861f719185de739bab281ad1"
  version "1.4.0-cursor1"
  license "GPL-3.0-or-later"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "pkgconf" => :build
  depends_on "protobuf"

  uses_from_macos "ncurses"

  on_linux do
    depends_on "openssl@3"
    depends_on "zlib-ng-compat"
  end

  conflicts_with "mosh", because: "both install mosh, mosh-client and mosh-server"

  def install
    # Same build as homebrew-core's mosh (HEAD path).
    ENV.append_to_cflags "-DNDEBUG"
    ENV.append "LDFLAGS", "-Wl,-dead_strip_dylibs" if OS.mac?
    ENV.append "CXXFLAGS", "-std=gnu++17"
    inreplace "scripts/mosh.pl", "'mosh-client", "'#{bin}/mosh-client"
    inreplace "Makefile.am", "--dirty", "--dirty=-Homebrew"
    system "./autogen.sh"
    system "./configure", "--prefix=#{prefix}", "--enable-completion", "--disable-silent-rules"
    system "make", "install"
  end

  test do
    system bin/"mosh-client", "-c"
  end
end
