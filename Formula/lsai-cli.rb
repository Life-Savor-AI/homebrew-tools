class LsaiCli < Formula
  desc "Life Savor AI Developer CLI"
  homepage "https://lifesavor.ai"
  version "0.1.54"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.dev.lifesavor.ai/lsai-cli/v0.1.54/lsai-cli-v0.1.54-aarch64-apple-darwin.tar.gz"
      sha256 "718379ac4869663c8b69db0d7ee79874710f29a8b203a9f3a4c448c07e5f8b15"
    end
  end

  def install
    bin.install "lsai-cli"
  end

  test do
    assert_match "lsai-cli", shell_output("#{bin}/lsai-cli --help")
  end
end
