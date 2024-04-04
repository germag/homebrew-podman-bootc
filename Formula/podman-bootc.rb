class PodmanBootc < Formula
  desc "Streamlining podman + bootc interactions"
  homepage "https://gitlab.com/bootc-org/podman-bootc-cli"
  url "https://gitlab.com/bootc-org/podman-bootc-cli.git",
    tag: "v0.1.1",
    revision: "5754e1774e357d4ff872b66e3462afed265f41a8"
  license "Apache-2.0"

  depends_on "go" => :build
  depends_on "libvirt"
  # Works on linux but for now we just provide a formula for MacOS
  depends_on arch: :arm64
  depends_on "xorriso"

  def install
    system "make"
    bin.install "bin/podman-bootc"
  end

  test do
    system "#{bin}/podman-bootc", "help"
  end
end
