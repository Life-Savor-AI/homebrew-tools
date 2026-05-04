class LsaiCli < Formula
  desc "Life Savor AI Developer CLI"
  homepage "https://lifesavor.ai"
  version "0.1.46"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.dev.lifesavor.ai/lsai-cli/v0.1.46/lsai-cli-v0.1.46-aarch64-apple-darwin.tar.gz"
      sha256 "e4038efe3189556bb7783b656a877ff39e2d35cd95c8bd294a8ead36943eb0eb"
    end
  end

  def install
    bin.install "lsai-cli"
  end

  test do
    assert_match "lsai-cli", shell_output("#{bin}/lsai-cli --help")
  end
end
