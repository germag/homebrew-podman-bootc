class PodmanBootc < Formula
  desc "Streamlining podman + bootc interactions"
  homepage "https://github.com/containers/podman-bootc"
  url "https://github.com/containers/podman-bootc.git",
    tag:      "v0.1.1",
    revision: "5754e1774e357d4ff872b66e3462afed265f41a8"
  head "https://github.com/containers/podman-bootc.git", branch: "main"
  license "Apache-2.0"

  depends_on "go" => :build
  # Works on linux but for now we just provide a formula for MacOS
  depends_on arch: :arm64
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
