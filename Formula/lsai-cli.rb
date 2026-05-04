class LsaiCli < Formula
  desc "Life Savor AI Developer CLI"
  homepage "https://lifesavor.ai"
  version "0.1.50"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.dev.lifesavor.ai/lsai-cli/v0.1.50/lsai-cli-v0.1.50-aarch64-apple-darwin.tar.gz"
      sha256 "0534a5849659b972bec2a2f93d8ae28064a951c54d1eb2e3ce0d3bb4b939e546"
    end
  end

  def install
    bin.install "lsai-cli"
  end

  test do
    assert_match "lsai-cli", shell_output("#{bin}/lsai-cli --help")
  end
end
