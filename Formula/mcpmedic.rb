class Mcpmedic < Formula
  desc "First aid for MCP configs: scan, doctor, diff and sync MCP servers across every AI tool you use"
  homepage "https://github.com/useless-rs/mcpmedic"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.14.0/mcpmedic-macos-aarch64.tar.gz"
      sha256 "7fed0358a7f04246d46bd0b6d99c00fd353c3d4ca0df7039362f672a69089022"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.14.0/mcpmedic-macos-x86_64.tar.gz"
      sha256 "97ca15ce67eb50df45d50870c3f09b67c3fc38116a5231fe1a2a17e0ead8dc54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.14.0/mcpmedic-linux-aarch64.tar.gz"
      sha256 "2e6618ccf5a6e57e79e67e6a690b7a0ac23c55568f74f76d8600a100bdc83b2a"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.14.0/mcpmedic-linux-x86_64.tar.gz"
      sha256 "9c3118b8266b8dab9a54db984e911dcef3fe86d8da73a3e669e14a7863a8ce31"
    end
  end

  def install
    bin.install "mcpmedic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpmedic --version")
  end
end
