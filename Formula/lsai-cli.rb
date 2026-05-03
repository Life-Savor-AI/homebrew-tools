class LsaiCli < Formula
  desc "Life Savor AI Developer CLI"
  homepage "https://lifesavor.ai"
  version "0.1.41"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.dev.lifesavor.ai/lsai-cli/v0.1.41/lsai-cli-v0.1.41-aarch64-apple-darwin.tar.gz"
      sha256 "7bd6bac4e414b6b497ed07ec6b040b4b41ff33fb8ea88042cfdb287805200ae3"
    end
  end

  def install
    bin.install "lsai-cli"
  end

  test do
    assert_match "lsai-cli", shell_output("#{bin}/lsai-cli --help")
  end
end
