class Mcpmedic < Formula
  desc "First aid for MCP configs: scan, doctor, diff and sync MCP servers across every AI tool you use"
  homepage "https://github.com/useless-rs/mcpmedic"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.4.0/mcpmedic-macos-aarch64.tar.gz"
      sha256 "79a798fedf23d3d846ac96f839bc4650fa7b69792f657f9af5e4207dcf9fed25"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.4.0/mcpmedic-macos-x86_64.tar.gz"
      sha256 "c3d08fcf5114346ca2e5b475c6c923e2d5bed8e6b396c33bdbca6b54ac2709e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.4.0/mcpmedic-linux-aarch64.tar.gz"
      sha256 "884457f53e8bd00bf7dbefa911c76221ea38143a27cd86b8df54161d395d3763"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.4.0/mcpmedic-linux-x86_64.tar.gz"
      sha256 "ad00fde28ec0395edcc3d175d37b923b95d50ac5813ee1a49f43a55c0a47bef7"
    end
  end

  def install
    bin.install "mcpmedic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpmedic --version")
  end
end
