class LsaiCli < Formula
  desc "Life Savor AI Developer CLI"
  homepage "https://lifesavor.ai"
  version "0.1.42"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.dev.lifesavor.ai/lsai-cli/v0.1.42/lsai-cli-v0.1.42-aarch64-apple-darwin.tar.gz"
      sha256 "85fede5dd1ea009a9c4d80ecb4fd73d334e67ccc726b64907356ec1b8d5cd94b"
    end
  end

  def install
    bin.install "lsai-cli"
  end

  test do
    assert_match "lsai-cli", shell_output("#{bin}/lsai-cli --help")
  end
end
