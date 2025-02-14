class PodmanBootc < Formula
  desc "Streamlining podman + bootc interactions"
  homepage "https://github.com/containers/podman-bootc"
  url "https://github.com/containers/podman-bootc.git",
    tag:      "v0.1.2"
  license "Apache-2.0"

  head do
    url  "https://github.com/containers/podman-bootc.git", branch: "main"
    depends_on "go-md2man" => :build
  end

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
