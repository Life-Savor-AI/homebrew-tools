class LsaiCli < Formula
  desc "Life Savor AI Developer CLI"
  homepage "https://lifesavor.ai"
  version "0.1.45"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.dev.lifesavor.ai/lsai-cli/v0.1.45/lsai-cli-v0.1.45-aarch64-apple-darwin.tar.gz"
      sha256 "d36187d0eaaff13827181219ebe194a4c359436eab357ba947be7a0dd082d083"
    end
  end

  def install
    bin.install "lsai-cli"
  end

  test do
    assert_match "lsai-cli", shell_output("#{bin}/lsai-cli --help")
  end
end
