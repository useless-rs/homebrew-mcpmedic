class Mcpmedic < Formula
  desc "First aid for MCP configs: scan, doctor, diff and sync MCP servers across every AI tool you use"
  homepage "https://github.com/useless-rs/mcpmedic"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.5.0/mcpmedic-macos-aarch64.tar.gz"
      sha256 "3b7fe9a0f1186edd14612f3a8a0371093c239b3378c6400980c90df404c62b03"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.5.0/mcpmedic-macos-x86_64.tar.gz"
      sha256 "3b1737b49a7a02e2205adb71a4630552f49b1e6d33cb957d2403d017da14816d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.5.0/mcpmedic-linux-aarch64.tar.gz"
      sha256 "d18f155432c5ea6c4947caaa627c95e442d4221984a36fa9600e173f898e1997"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.5.0/mcpmedic-linux-x86_64.tar.gz"
      sha256 "830def19fe6079beb13fbba542a07cf204b9111012e4f8efac3589fa8de47208"
    end
  end

  def install
    bin.install "mcpmedic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpmedic --version")
  end
end
