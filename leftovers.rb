class Leftovers < Formula
  desc "Command line utility for cleaning orphaned IAAS resources."
  homepage "https://github.com/genevieve/leftovers"
  version "v0.17.0"

  if OS.mac?
    url "https://github.com/genevieve/leftovers/releases/download/#{version}/leftovers-#{version}-darwin-amd64"
    sha256 "63ae13bfaee4ac0b5dc1cf4ba642217f990c36dc7f97a4675dfdacacfa5e37d0"
  elsif OS.linux?
    url "https://github.com/genevieve/leftovers/releases/download/#{version}/leftovers-#{version}-linux-amd64"
    sha256 "24cff04a5959465b7a5bf82d2b6bca05c1e5099aa965c85ff0651d03fd09115b"
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
