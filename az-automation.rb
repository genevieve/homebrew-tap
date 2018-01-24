class AzAutomation < Formula
  desc "Command line utility for cleaning up orphaned IAAS resources."
  homepage "https://github.com/genevievelesperance/az-automation"
  version "v0.2.0"

  if OS.mac?
    url "https://github.com/genevievelesperance/az-automation/releases/download/#{version}/az-automation-#{version}-darwin-amd64"
    sha256 ""
  elsif OS.linux?
    url "https://github.com/genevievelesperance/az-automation/releases/download/#{version}/az-automation-#{version}-linux-amd64"
    sha256 ""
  end

  depends_on :arch => :x86_64
  depends_on "az" => "2.0.25"

  def install
    binary_name = "az-automation"
    if OS.mac?
      bin.install "az-automation-#{version}-darwin-amd64" => binary_name
    elsif OS.linux?
      bin.install "az-automation-#{version}-linux-amd64" => binary_name
    end
  end

  test do
    system "#{bin}/#{binary_name} --help"
  end
end
