class Leftovers < Formula
  desc "Command line utility for cleaning orphaned IAAS resources."
  homepage "https://github.com/genevievelesperance/leftovers-cli"
  version "v0.1.0"

  if OS.mac?
    url "https://github.com/genevievelesperance/leftovers-cli/releases/download/#{version}/leftovers-cli-#{version}_osx"
    sha256 ""
  elsif OS.linux?
    url "https://github.com/genevievelesperance/leftovers-cli/releases/download/#{version}/leftovers-cli-#{version}_linux_x86-64"
    sha256 ""
  end

  depends_on :arch => :x86_64

  def install
    binary_name = "leftovers"
    if OS.mac?
      bin.install "leftovers-cli-#{version}_osx" => binary_name
    elsif OS.linux?
      bin.install "leftovers-cli-#{version}_linux_x86-64" => binary_name
    end
  end

  test do
    system "#{bin}/#{binary_name} --help"
  end
end
