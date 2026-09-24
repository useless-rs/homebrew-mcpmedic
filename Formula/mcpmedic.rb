class Mcpmedic < Formula
  desc "First aid for MCP configs: scan, doctor, diff and sync MCP servers across every AI tool you use"
  homepage "https://github.com/useless-rs/mcpmedic"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.7.0/mcpmedic-macos-aarch64.tar.gz"
      sha256 "70913bd87ecb11d0b69f9d5ccbd177c8a9261188141134e4a290f75f2a565ea0"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.7.0/mcpmedic-macos-x86_64.tar.gz"
      sha256 "efee5c17b1c648527f808291731381a231312415a4ca03e0a2fe97754d0d8bbd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.7.0/mcpmedic-linux-aarch64.tar.gz"
      sha256 "d486e88dcfc647b44ebffc0ef9264c61a2728baeb3c608f63183e6b92bc21c1f"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.7.0/mcpmedic-linux-x86_64.tar.gz"
      sha256 "ca2390e402583a11bd467678950ae1501e0f2a0f3f2bc7a91755d97792819e92"
    end
  end

  def install
    bin.install "mcpmedic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpmedic --version")
  end
end
