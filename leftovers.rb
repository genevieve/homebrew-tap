class Leftovers < Formula
  desc "Command line utility for cleaning orphaned IAAS resources."
  homepage "https://github.com/genevieve/leftovers"
  version "v0.41.0"

  if OS.mac?
    url "https://github.com/genevieve/leftovers/releases/download/#{version}/leftovers-#{version}-darwin-amd64"
    sha256 "4692c217cd99eec57538390aeabfd1174966f5b941886ce434ba3c93a5ee2dd5"
  elsif OS.linux?
    url "https://github.com/genevieve/leftovers/releases/download/#{version}/leftovers-#{version}-linux-amd64"
    sha256 "0a38ce510eb03df3c14741f725ce4216cf819309e8517521090002974013d98e"
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
