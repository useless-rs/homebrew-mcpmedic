class Mcpmedic < Formula
  desc "First aid for MCP configs: scan, doctor, diff and sync MCP servers across every AI tool you use"
  homepage "https://github.com/useless-rs/mcpmedic"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.13.0/mcpmedic-macos-aarch64.tar.gz"
      sha256 "79b2cf09b8b0dbe5ffde5c1e896e8e1529379d75fd99b04b3eb08407a9c1ed76"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.13.0/mcpmedic-macos-x86_64.tar.gz"
      sha256 "87979243b3a48367a9c7fdcb7c4a33b244fc84c4a83a8c63ec46364fa6b62c54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.13.0/mcpmedic-linux-aarch64.tar.gz"
      sha256 "ef2e6cc56126446f59640364d94320bc88b5b56dc58fcd561a281d159320b174"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.13.0/mcpmedic-linux-x86_64.tar.gz"
      sha256 "f412cb9c5a16646bbbe07c534de1307d4cdd7fc221194d64106fd49f89ee0c7d"
    end
  end

  def install
    bin.install "mcpmedic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpmedic --version")
  end
end
