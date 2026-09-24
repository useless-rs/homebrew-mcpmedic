class Mcpmedic < Formula
  desc "First aid for MCP configs: scan, doctor, diff and sync MCP servers across every AI tool you use"
  homepage "https://github.com/useless-rs/mcpmedic"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.9.0/mcpmedic-macos-aarch64.tar.gz"
      sha256 "0bb31fcc47dd8d761c97a37a5a34a2cca1f799970d2e73480569180f28c1b551"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.9.0/mcpmedic-macos-x86_64.tar.gz"
      sha256 "bfdabd89a090787dbc019833ba131983506d306a3b605558f53f28efd7e04475"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.9.0/mcpmedic-linux-aarch64.tar.gz"
      sha256 "7134ccfdd81488aa5949444902ead7c2b24ced0b8558c6c68dce0475b1be96bd"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.9.0/mcpmedic-linux-x86_64.tar.gz"
      sha256 "60d9fb3343b4c7c91009a39d9f3550229b697fb360511320945125e7db195548"
    end
  end

  def install
    bin.install "mcpmedic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpmedic --version")
  end
end
