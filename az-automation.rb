class AzAutomation < Formula
  desc "Command line utility for creating an Azure Service Principal."
  homepage "https://github.com/genevievelesperance/az-automation"
  version "v0.1.0"

  if OS.mac?
    url "https://github.com/genevievelesperance/az-automation/releases/download/#{version}/az-automation-#{version}-darwin-amd64"
    sha256 "4a2fa6c87dda89390af582100137d683b98f42240d766727c33e51e3bf5ead74"
  elsif OS.linux?
    url "https://github.com/genevievelesperance/az-automation/releases/download/#{version}/az-automation-#{version}-linux-amd64"
    sha256 "6d0cc0758c344e1255f676f88cc581a02d09c3c2361030a9d8b87d3d3d0ccd36"
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
