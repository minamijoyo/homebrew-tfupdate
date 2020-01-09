# This file was generated by GoReleaser. DO NOT EDIT.
class Tfupdate < Formula
  desc "Update version constraints in your Terraform configurations"
  homepage "https://github.com/minamijoyo/tfupdate"
  version "0.3.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/minamijoyo/tfupdate/releases/download/v0.3.3/tfupdate_0.3.3_darwin_amd64.tar.gz"
    sha256 "079a39d307512f4774be949affd7b7fea1fce5520e711d8086e3c7fd98663f4c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/minamijoyo/tfupdate/releases/download/v0.3.3/tfupdate_0.3.3_linux_amd64.tar.gz"
      sha256 "2ad4f1e961977c39c61547ee9437dfa88e503934feedd6e23067c798b6ae15d5"
    end
  end

  def install
    bin.install "tfupdate"
  end

  test do
    system "#{bin}/tfupdate --version"
  end
end
