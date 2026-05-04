class LsaiCli < Formula
  desc "Life Savor AI Developer CLI"
  homepage "https://lifesavor.ai"
  version "0.1.47"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.dev.lifesavor.ai/lsai-cli/v0.1.47/lsai-cli-v0.1.47-aarch64-apple-darwin.tar.gz"
      sha256 "aa6f71c91505cb51310f70f2b028133f1f30d4ce0563207528ff92d3aea69996"
    end
  end

  def install
    bin.install "lsai-cli"
  end

  test do
    assert_match "lsai-cli", shell_output("#{bin}/lsai-cli --help")
  end
end
