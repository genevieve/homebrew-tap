class Leftovers < Formula
  desc "Command line utility for cleaning orphaned IAAS resources."
  homepage "https://github.com/genevieve/leftovers"
  version "v0.61.0"

  if OS.mac?
    url "https://github.com/genevieve/leftovers/releases/download/#{version}/leftovers-#{version}-darwin-amd64"
    sha256 "c74a9e4daccff88becfbb14507cb53d4d3b0ed93cff89be2c232fc2e1b5a4bbe"
  elsif OS.linux?
    url "https://github.com/genevieve/leftovers/releases/download/#{version}/leftovers-#{version}-linux-amd64"
    sha256 "c5f5660507bd714327b710a98924b1d5be422cc225668ab9319bb18f16969a74"
  end

  depends_on :arch => :x86_64
  depends_on "az" => "2.0.25"

  def install
    binary_name = "leftovers"
    if OS.mac?
      bin.install "leftovers-#{version}-darwin-amd64" => binary_name
    elsif OS.linux?
      bin.install "leftovers-#{version}-linux-amd64" => binary_name
    end
  end

  test do
    system "#{bin}/#{binary_name} --help"
  end
end
