class LsaiCli < Formula
  desc "Life Savor AI Developer CLI"
  homepage "https://lifesavor.ai"
  version "0.1.40"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.dev.lifesavor.ai/lsai-cli/v0.1.40/lsai-cli-v0.1.40-aarch64-apple-darwin.tar.gz"
      sha256 "0382207c653e0163e15cf41d945a3028de95c7b0fd6d2ed8ada946fa624314b8"
    end
  end

  def install
    bin.install "lsai-cli"
  end

  test do
    assert_match "lsai-cli", shell_output("#{bin}/lsai-cli --help")
  end
end
