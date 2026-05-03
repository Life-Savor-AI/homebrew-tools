class LsaiCli < Formula
  desc "Life Savor AI Developer CLI"
  homepage "https://lifesavor.ai"
  version "0.1.38"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.dev.lifesavor.ai/lsai-cli/v0.1.38/lsai-cli-v0.1.38-aarch64-apple-darwin.tar.gz"
      sha256 "cc9f5a55bdd7f66bf78766717f3dd15b64467f7517130c28e96a283aa9baf08d"
    end
  end

  def install
    bin.install "lsai-cli"
  end

  test do
    assert_match "lsai-cli", shell_output("#{bin}/lsai-cli --help")
  end
end
