class Mcpmedic < Formula
  desc "First aid for MCP configs: scan, doctor, diff and sync MCP servers across every AI tool you use"
  homepage "https://github.com/useless-rs/mcpmedic"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.3.0/mcpmedic-macos-aarch64.tar.gz"
      sha256 "0b992aceafdc864e6ead8c4a29d7abd530e8cdf195c6d1e6f65ca948761e01eb"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.3.0/mcpmedic-macos-x86_64.tar.gz"
      sha256 "b17ee15928cbe37161e3219c116d32cb75274f637fa364eb913dd286ef6badd1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.3.0/mcpmedic-linux-aarch64.tar.gz"
      sha256 "34a5b8b983ee67e997356d97e48a700710597091bc3dc279c2cc9bc74107ef89"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.3.0/mcpmedic-linux-x86_64.tar.gz"
      sha256 "0e5cfae8a2a0f6d62db67ff571a26e0e6283d2da571d91e40bb9d795cda910e0"
    end
  end

  def install
    bin.install "mcpmedic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpmedic --version")
  end
end
