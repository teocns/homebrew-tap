class KubectlFinalize < Formula
  desc "Kubectl plugin to force delete stuck Kubernetes resources"
  homepage "https://github.com/teocns/kubectl-finalize"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/teocns/kubectl-finalize/releases/download/v0.1.1/kubectl-finalize-darwin-arm64"
      sha256 "454964eee7a50ef3c125b272fc8da2b74dcdd2a1438e7bbf5229b0d898e27b7b"
    else
      url "https://github.com/teocns/kubectl-finalize/releases/download/v0.1.1/kubectl-finalize-darwin-amd64"
      sha256 "0363fad51d615557902e5d735d09a523539b9cba1897fefcca6298f6eb983d49"
    end
  end

  on_linux do
    url "https://github.com/teocns/kubectl-finalize/releases/download/v0.1.1/kubectl-finalize-linux-amd64"
    sha256 "773bc2b86b4b621738789563c27ac20d4ba765d19d9ec623cf480c4c6783344f"
  end

  def install
    bin.install Dir["kubectl-finalize-*"].first => "kubectl-finalize"
  end

  test do
    system "#{bin}/kubectl-finalize", "--help"
  end
end 