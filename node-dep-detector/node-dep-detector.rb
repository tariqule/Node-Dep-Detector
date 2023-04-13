class NodeDepDetector < Formula
  desc "A command-line tool to detect unused Node.js dependencies"
  homepage "https://github.com/tariqule/node-dep-detector"
  url "https://github.com/tariqule/homebrew-formulas/archive/refs/tags/v1.tar.gz"
  sha256 "<SHA-256 hash of the release tarball>"
  license "MIT"

  depends_on "node"

  def install
    bin.install "node-dep-detector.sh" => "node-dep-detector"
  end

  test do
    system "#{bin}/node-dep-detector", "--version"
  end
end

