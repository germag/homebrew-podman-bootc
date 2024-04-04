class PodmanBootc < Formula
  desc "Streamlining podman + bootc interactions"
  homepage "https://gitlab.com/bootc-org/podman-bootc-cli"
  url "https://gitlab.com/bootc-org/podman-bootc-cli.git"
  version "0.1.1"
  license "Apache-2.0"

  depends_on "go" => :build
  depends_on "libvirt"
  depends_on "xorriso"

  def install
    system "make"
    bin.install "bin/podman-bootc"
  end

  test do
    system "#{bin}/podman-bootc", "help"
  end
end
