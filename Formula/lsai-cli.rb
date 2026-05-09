class LsaiCli < Formula
  desc "Life Savor AI Developer CLI"
  homepage "https://lifesavor.ai"
  version "0.6.56"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.dev.lifesavor.ai/lsai-cli/v0.6.56/lsai-cli-v0.6.56-aarch64-apple-darwin.tar.gz"
      sha256 "f311cbe8afba6ffa54a9b2a335d52211690d03204255aa7d4376846fcdff9288"
    end
  end

  def install
    bin.install "lsai-cli"
  end

  test do
    assert_match "lsai-cli", shell_output("#{bin}/lsai-cli --help")
  end
end
