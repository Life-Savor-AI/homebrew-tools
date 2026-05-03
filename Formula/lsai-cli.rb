class LsaiCli < Formula
  desc "Life Savor AI Developer CLI"
  homepage "https://lifesavor.ai"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.dev.lifesavor.ai/lsai-cli/v0.1.3/lsai-cli-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "c33a99dace95b1882b3157ebf5b7220534f89d5eb4fa0e54e01bd87bc671b5a4"
    end
  end

  def install
    bin.install "lsai-cli"
  end

  test do
    assert_match "lsai-cli", shell_output("#{bin}/lsai-cli --help")
  end
end
