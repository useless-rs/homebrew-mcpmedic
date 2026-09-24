class Mcpmedic < Formula
  desc "First aid for MCP configs: scan, doctor, diff and sync MCP servers across every AI tool you use"
  homepage "https://github.com/useless-rs/mcpmedic"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.8.0/mcpmedic-macos-aarch64.tar.gz"
      sha256 "6a88cedf2c3c5f32030cb07edad5bc4cc341a1dfec02fd69454014d89d9e159c"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.8.0/mcpmedic-macos-x86_64.tar.gz"
      sha256 "1ff9efb45754fa48c4b2284e893988d122f31fbd50f8ebd74719ae5decd568ee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.8.0/mcpmedic-linux-aarch64.tar.gz"
      sha256 "174f6e86fda534301f98cc349d4cd5b9e08ecd483fbb914ed0587c5281e66db3"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.8.0/mcpmedic-linux-x86_64.tar.gz"
      sha256 "4d82ae84ea04355e5e95233ccce4ea5b89cef08122011bc439190fece1d20ce8"
    end
  end

  def install
    bin.install "mcpmedic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpmedic --version")
  end
end
