class Mcpmedic < Formula
  desc "First aid for MCP configs: scan, doctor, diff and sync MCP servers across every AI tool you use"
  homepage "https://github.com/useless-rs/mcpmedic"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.10.0/mcpmedic-macos-aarch64.tar.gz"
      sha256 "d66608313e74c06144f828fdd394198682b56abac67c756a11bb275493396ea9"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.10.0/mcpmedic-macos-x86_64.tar.gz"
      sha256 "196fa3cb1eabf143fe49246acceac30fab67e3459329a8a7057bcb716760d2bf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.10.0/mcpmedic-linux-aarch64.tar.gz"
      sha256 "ac247aa934ca6aeb4e33c01e36b7c31a1addc5e6db5fdc17a8b2e7531952f5d7"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.10.0/mcpmedic-linux-x86_64.tar.gz"
      sha256 "350d087c0917d4a1059a0b32a2c12aee22487a264c38b10689100687e73a4033"
    end
  end

  def install
    bin.install "mcpmedic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpmedic --version")
  end
end
