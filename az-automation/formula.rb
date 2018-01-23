class AzAutomation < Formula
  desc "Command line utility for creating an Azure Service Principal."
  homepage "https://github.com/genevievelesperance/az-automation"
  version "v0.1.0"

  if OS.mac?
    url "https://github.com/genevievelesperance/az-automation/releases/download/#{version}/az-automation-#{version}_osx"
    sha256 ""
  elsif OS.linux?
    url "https://github.com/cloudfoundry/bosh-bootloader/releases/download/#{version}/az-automation-#{version}_linux_x86-64"
    sha256 ""
  end

  depends_on :arch => :x86_64
  depends_on "az" => "2.0.25"

  def install
    binary_name = "az-automation"
    if OS.mac?
      bin.install "az-automation-#{version}_osx" => binary_name
    elsif OS.linux?
      bin.install "az-automation-#{version}_linux_x86-64" => binary_name
    end
  end

  test do
    system "#{bin}/#{binary_name} --help"
  end
end
