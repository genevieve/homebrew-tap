class Leftovers < Formula
  desc "Command line utility for cleaning orphaned IAAS resources."
  homepage "https://github.com/genevievelesperance/leftovers-cli"
  version "v0.1.0"

  if OS.mac?
    url "https://github.com/genevievelesperance/leftovers-cli/releases/download/#{version}/leftovers-cli-#{version}_osx"
    sha256 "0ccf5fc7a6f6f4dcc98d37b3cdb1e4cf723f2d84ced53161b67d1731f5a9721e"
  end

  depends_on :arch => :x86_64

  def install
    binary_name = "leftovers"
    if OS.mac?
      bin.install "leftovers-cli-#{version}_osx" => binary_name
    end
  end

  test do
    system "#{bin}/#{binary_name} --help"
  end
end
