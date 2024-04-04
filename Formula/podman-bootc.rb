class PodmanBootc < Formula
  desc "Streamlining podman + bootc interactions"
  homepage "https://gitlab.com/bootc-org/podman-bootc-cli"
  url "https://gitlab.com/bootc-org/podman-bootc-cli.git", tag: "v0.1.1"
  license "Apache-2.0"

  depends_on "go" => :build
  depends_on "glibc"
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
