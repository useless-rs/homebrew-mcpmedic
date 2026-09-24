class Mcpmedic < Formula
  desc "First aid for MCP configs: scan, doctor, diff and sync MCP servers across every AI tool you use"
  homepage "https://github.com/useless-rs/mcpmedic"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.12.0/mcpmedic-macos-aarch64.tar.gz"
      sha256 "d64d8a7952f3742ed36281f36c26e9d70eb890cf3871de407c18b024d2e045ec"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.12.0/mcpmedic-macos-x86_64.tar.gz"
      sha256 "19f6d3c9c92e7e7adaa533c39f08be96ae281af9a66762b955d077100958dc81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.12.0/mcpmedic-linux-aarch64.tar.gz"
      sha256 "3c497e30c802b0c111c6cface065c0ed64a3996781edc18cd50dd2a09faca841"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.12.0/mcpmedic-linux-x86_64.tar.gz"
      sha256 "649e276882af85aba2390f58914470280740dd87786d6ea0b0da2de4ee2acea8"
    end
  end

  def install
    bin.install "mcpmedic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpmedic --version")
  end
end
