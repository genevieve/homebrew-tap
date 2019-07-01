class Leftovers < Formula
  desc "Command line utility for cleaning orphaned IAAS resources."
  homepage "https://github.com/genevieve/leftovers"
  version "v0.54.0"

  if OS.mac?
    url "https://github.com/genevieve/leftovers/releases/download/#{version}/leftovers-#{version}-darwin-amd64"
    sha256 "a2a03b56864f43ca039692a6d16e3bc2d74616b74d3858ef5c4c04655607793e"
  elsif OS.linux?
    url "https://github.com/genevieve/leftovers/releases/download/#{version}/leftovers-#{version}-linux-amd64"
    sha256 "55543099684ca048e7a1cbc64706a1b21b7381177bf28fdebc4923d35d00be2e"
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
