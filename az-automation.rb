class AzAutomation < Formula
  desc "Command line utility for cleaning up orphaned IAAS resources."
  homepage "https://github.com/genevievelesperance/az-automation"
  version "v0.2.0"

  if OS.mac?
    url "https://github.com/genevievelesperance/az-automation/releases/download/#{version}/az-automation-#{version}-darwin-amd64"
    sha256 "ed9500e522cfb0c66bd84f8d496491913d6a161340af0a76884219645026f0de"
  elsif OS.linux?
    url "https://github.com/genevievelesperance/az-automation/releases/download/#{version}/az-automation-#{version}-linux-amd64"
    sha256 "318c392d355d1b903404c7788e028a736e859d5d351f40f1187499baa9557781"
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
