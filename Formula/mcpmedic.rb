class Mcpmedic < Formula
  desc "First aid for MCP configs: scan, doctor, diff and sync MCP servers across every AI tool you use"
  homepage "https://github.com/useless-rs/mcpmedic"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.11.0/mcpmedic-macos-aarch64.tar.gz"
      sha256 "bc193b094c1449df8d7c386e7b27788bc1ad0b236123479c4bedba47db1632e9"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.11.0/mcpmedic-macos-x86_64.tar.gz"
      sha256 "eaacf3740db863096b225009a5b564d818b9ff584b926eabfc3d2500b033fea9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.11.0/mcpmedic-linux-aarch64.tar.gz"
      sha256 "3c6be070a4806981eb3c43700ae047f3480e30308616de14daf5249635ee414d"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.11.0/mcpmedic-linux-x86_64.tar.gz"
      sha256 "3da9663f6c373ed1054fe72d129a8be7a645c1fc6b798d823f0ccb3b891c8192"
    end
  end

  def install
    bin.install "mcpmedic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpmedic --version")
  end
end
