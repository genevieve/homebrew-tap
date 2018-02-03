class Leftovers < Formula
  desc "Command line utility for cleaning orphaned IAAS resources."
  homepage "https://github.com/genevieve/leftovers"
  version "v0.8.0"

  if OS.mac?
    url "https://github.com/genevieve/leftovers/releases/download/#{version}/leftovers-#{version}_osx"
    sha256 "85e8707b1bafa458ed029da64e95e5ae656f2cbe2a35e0c40713c873bd9f757d"
  end

  depends_on :arch => :x86_64

  def install
    binary_name = "leftovers"
    if OS.mac?
      bin.install "leftovers-#{version}_osx" => binary_name
    end
  end

  test do
    system "#{bin}/#{binary_name} --help"
  end
end
