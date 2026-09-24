class Mcpmedic < Formula
  desc "First aid for MCP configs: scan, doctor, diff and sync MCP servers across every AI tool you use"
  homepage "https://github.com/useless-rs/mcpmedic"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.6.0/mcpmedic-macos-aarch64.tar.gz"
      sha256 "6212cfd6edfb5f4c986a69e85f76fe3f64d8547b60d2d91b3613f42c3bfd91d1"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.6.0/mcpmedic-macos-x86_64.tar.gz"
      sha256 "f0264140f7468ce682800a24f165ea65f350aea4192bd06f58c6c6471018c814"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.6.0/mcpmedic-linux-aarch64.tar.gz"
      sha256 "c474056ce98d0c665036a56bd922be69fed84a55c892d16ceca9eb81e0a09216"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.6.0/mcpmedic-linux-x86_64.tar.gz"
      sha256 "c2309545d09b050ba009628d8b6793f5776666be1d632dbe1a718f6ff5414d18"
    end
  end

  def install
    bin.install "mcpmedic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpmedic --version")
  end
end
