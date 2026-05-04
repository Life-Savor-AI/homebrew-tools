class LsaiCli < Formula
  desc "Life Savor AI Developer CLI"
  homepage "https://lifesavor.ai"
  version "0.1.55"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.dev.lifesavor.ai/lsai-cli/v0.1.55/lsai-cli-v0.1.55-aarch64-apple-darwin.tar.gz"
      sha256 "ac73d82afef9aa2787a8efd6fe51314708cb9b69ba6b5eb14d59d4843298cd93"
    end
  end

  def install
    bin.install "lsai-cli"
  end

  test do
    assert_match "lsai-cli", shell_output("#{bin}/lsai-cli --help")
  end
end
