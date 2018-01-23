class AzAutomation < Formula
  desc "Command line utility for creating an Azure Service Principal."
  homepage "https://github.com/genevievelesperance/az-automation"
  version "v0.1.0"

  if OS.mac?
    url "https://github.com/genevievelesperance/az-automation/releases/download/#{version}/az-automation-#{version}_osx"
    sha256 "29c2781843186d05f35dc37c0a104354f486c74346b497cb2f453e862c7db0f2"
  end

  depends_on :arch => :x86_64
  depends_on "az" => "2.0.25"

  def install
    binary_name = "az-automation"
    if OS.mac?
      bin.install "az-automation-#{version}_osx" => binary_name
    end
  end

  test do
    system "#{bin}/#{binary_name} --help"
  end
end
