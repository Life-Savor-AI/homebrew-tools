class LsaiCli < Formula
  desc "Life Savor AI Developer CLI"
  homepage "https://lifesavor.ai"
  version "0.1.51"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.dev.lifesavor.ai/lsai-cli/v0.1.51/lsai-cli-v0.1.51-aarch64-apple-darwin.tar.gz"
      sha256 "536afd57dba94abd90de462251d2bb0f56bfa905b38253ddd02d66cb4fd6a4a6"
    end
  end

  def install
    bin.install "lsai-cli"
  end

  test do
    assert_match "lsai-cli", shell_output("#{bin}/lsai-cli --help")
  end
end
