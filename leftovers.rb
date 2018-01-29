class Leftovers < Formula
  desc "Command line utility for cleaning orphaned IAAS resources."
  homepage "https://github.com/genevievelesperance/leftovers-cli"
  version "v0.2.0"

  if OS.mac?
    url "https://github.com/genevievelesperance/leftovers-cli/releases/download/#{version}/leftovers-cli-#{version}_osx"
    sha256 "7244c2d5e292e450d8f8a0cd83c54d8b2406070e9bd220e78960e45fe700df2d"
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
