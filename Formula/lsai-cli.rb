class LsaiCli < Formula
  desc "Life Savor AI Developer CLI"
  homepage "https://lifesavor.ai"
  version "0.1.48"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.dev.lifesavor.ai/lsai-cli/v0.1.48/lsai-cli-v0.1.48-aarch64-apple-darwin.tar.gz"
      sha256 "210df77218ce032fd2dfe8bd586d98472e529f94ce829fba38a021bcf0b0c5d7"
    end
  end

  def install
    bin.install "lsai-cli"
  end

  test do
    assert_match "lsai-cli", shell_output("#{bin}/lsai-cli --help")
  end
end
