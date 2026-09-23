class Mcpmedic < Formula
  desc "First aid for MCP configs: scan, doctor, diff and sync MCP servers across every AI tool you use"
  homepage "https://github.com/useless-rs/mcpmedic"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.3.0/mcpmedic-macos-aarch64.tar.gz"
      sha256 "e15902289a839f2a28a00f4b68179ed35d4143ef4922206d494e3172fd1ac128"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.3.0/mcpmedic-macos-x86_64.tar.gz"
      sha256 "ec861909393e848a6403ea0fca9b6ffa95a1ed3e71010f702b64d6e2171ab47d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.3.0/mcpmedic-linux-aarch64.tar.gz"
      sha256 "901eba9dc458b98ca8cfa8394e3bd13f4edbc4668781d6d80ea553dacb00019e"
    elsif Hardware::CPU.intel?
      url "https://github.com/useless-rs/mcpmedic/releases/download/v0.3.0/mcpmedic-linux-x86_64.tar.gz"
      sha256 "0ee04ffd1c58edb1a93a020a6506a045872f8bc8c725626eb84dd4563b9a7098"
    end
  end

  def install
    bin.install "mcpmedic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpmedic --version")
  end
end
