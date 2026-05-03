class LsaiCli < Formula
  desc "Life Savor AI Developer CLI"
  homepage "https://lifesavor.ai"
  version "0.1.44"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.dev.lifesavor.ai/lsai-cli/v0.1.44/lsai-cli-v0.1.44-aarch64-apple-darwin.tar.gz"
      sha256 "769df7d9ecfd707e7970f8a794316b300ebc8f5c37a49f5459183f350bcfe39a"
    end
  end

  def install
    bin.install "lsai-cli"
  end

  test do
    assert_match "lsai-cli", shell_output("#{bin}/lsai-cli --help")
  end
end
