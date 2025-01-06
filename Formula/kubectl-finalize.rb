class KubectlFinalize < Formula
  desc "Kubectl plugin to force delete stuck Kubernetes resources"
  homepage "https://github.com/teocns/kubectl-finalize"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/teocns/kubectl-finalize/releases/download/v0.1.1/kubectl-finalize-darwin-arm64"
      sha256 "d140cb320e6ea43e36fa1a9d72e8f7ad74edba411284e53a6b199dc141c1736f"

      def install
        binary_name = "kubectl-finalize"
        bin.install "kubectl-finalize-darwin-arm64" => binary_name
      end
    else
      url "https://github.com/teocns/kubectl-finalize/releases/download/v0.1.1/kubectl-finalize-darwin-amd64"
      sha256 "b562476da316dd3876b16c33728733f4cd1d47c6dc33a2d14e1ed67199f20b9b"

      def install
        binary_name = "kubectl-finalize"
        bin.install "kubectl-finalize-darwin-amd64" => binary_name
      end
    end
  end

  on_linux do
    url "https://github.com/teocns/kubectl-finalize/releases/download/v0.1.1/kubectl-finalize-linux-amd64"
    sha256 "69974a5b655e71474163fd4d771b9c726c4fe98b7c5ec786981b69109b45898b"

    def install
      binary_name = "kubectl-finalize"
      bin.install "kubectl-finalize-linux-amd64" => binary_name
    end
  end

  test do
    system "#{bin}/kubectl-finalize", "--help"
  end
end 