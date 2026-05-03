class LsaiCli < Formula
  desc "Life Savor AI Developer CLI"
  homepage "https://lifesavor.ai"
  version "0.1.39"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.dev.lifesavor.ai/lsai-cli/v0.1.39/lsai-cli-v0.1.39-aarch64-apple-darwin.tar.gz"
      sha256 "f958acd29ffed99b3e40a6c8b7a601c3f3da1e77d458d7b2f0537e0798ad79b4"
    end
  end

  def install
    bin.install "lsai-cli"
  end

  test do
    assert_match "lsai-cli", shell_output("#{bin}/lsai-cli --help")
  end
end
