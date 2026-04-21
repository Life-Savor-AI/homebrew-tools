class LsaiCli < Formula
  desc "Life Savor AI Developer CLI"
  homepage "https://lifesavor.ai"
  version "0.1.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.dev.lifesavor.ai/lsai-cli/latest/aarch64-apple-darwin/lsai-cli.tar.gz"
      sha256 "96096f43f63a3bc23ffbbf1269521095d51565833f4e460a2caf2ea87d590c63"
    end
  end

  def install
    bin.install "lsai-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lsai-cli --version")
  end
end
