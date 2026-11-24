class Fritzvcard < Formula
  desc "Convert vCard files to FRITZ!Box phonebook XML"
  homepage "https://github.com/sercxanto/fritzvcard"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/sercxanto/fritzvcard/releases/download/v0.1.0/fritzvcard-darwin-amd64.tar.gz"
      sha256 "0da50e8f6a9445d72be9fb981d221159234df91f19a757831c18f80614ab571d"
    end
    on_arm do
      url "https://github.com/sercxanto/fritzvcard/releases/download/v0.1.0/fritzvcard-darwin-arm64.tar.gz"
      sha256 "7648d8b638eb2f7182c0e42b04af19a7d0106877b7b210406b33a30e72af612f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sercxanto/fritzvcard/releases/download/v0.1.0/fritzvcard-linux-amd64.tar.gz"
      sha256 "8d41eaf96087d34297699d4f667cd9cf05b4c31acab6ec2dd97c21251c1dd4ad"
    end
    on_arm do
      url "https://github.com/sercxanto/fritzvcard/releases/download/v0.1.0/fritzvcard-linux-arm64.tar.gz"
      sha256 "598fcc8706af07c6e701a4f3964be5241447a46ff211b5625f095db7793ac198"
    end
  end

  def install
    bin.install "fritzvcard"
  end

  test do
    assert_equal "fritzvcard v0.1.0", shell_output("#{bin}/fritzvcard version").strip
  end
end
