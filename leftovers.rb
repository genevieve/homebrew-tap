class Leftovers < Formula
  desc "Command line utility for cleaning orphaned IAAS resources."
  homepage "https://github.com/genevieve/leftovers"
  version "v0.34.0"

  if OS.mac?
    url "https://github.com/genevieve/leftovers/releases/download/#{version}/leftovers-#{version}-darwin-amd64"
    sha256 "7ea554ee6cfd950912d9fee2a8b1b09742146523bb282fa155b9c05d85132989"
  elsif OS.linux?
    url "https://github.com/genevieve/leftovers/releases/download/#{version}/leftovers-#{version}-linux-amd64"
    sha256 "08498bbe67b97a77e2201a1e3108757bde8ed5bc7cd965c3df7e5364ff89d67e"
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
