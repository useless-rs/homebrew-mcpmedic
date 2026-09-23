class Mcpmedic < Formula
  desc "First aid for MCP configs: scan, doctor, diff and sync MCP servers across every AI tool you use"
  homepage "https://github.com/useless-rs/mcpmedic"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.2.0/mcpmedic-macos-aarch64.tar.gz"
      sha256 "304538178e7ee7e9555d81870abcbfec638db4322144fe221f0213820e45404b"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.2.0/mcpmedic-macos-x86_64.tar.gz"
      sha256 "1b80df1ad2cf64d9a113e9537474b0802f2e7977a4ea77fbb0b1349931bf0dd1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.2.0/mcpmedic-linux-aarch64.tar.gz"
      sha256 "68705f4691368d9ea4f6788e761fc53903fad19aa547986041f5367c8b4a7c17"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.2.0/mcpmedic-linux-x86_64.tar.gz"
      sha256 "7870fa886e9a81eda8c42ba4e24f22541027defb5165e7812e50c4a0c3dee7a4"
    end
  end

  def install
    bin.install "mcpmedic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpmedic --version")
  end
end
