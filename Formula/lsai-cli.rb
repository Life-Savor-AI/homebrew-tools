class LsaiCli < Formula
  desc "Life Savor AI Developer CLI"
  homepage "https://lifesavor.ai"
  version "0.1.43"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.dev.lifesavor.ai/lsai-cli/v0.1.43/lsai-cli-v0.1.43-aarch64-apple-darwin.tar.gz"
      sha256 "951f7ebdbb9de9c9d978cbc0bd8b9d3a71e75fc93533f678cba7687c46df9b83"
    end
  end

  def install
    bin.install "lsai-cli"
  end

  test do
    assert_match "lsai-cli", shell_output("#{bin}/lsai-cli --help")
  end
end
