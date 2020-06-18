# This file was generated by GoReleaser. DO NOT EDIT.
class Tfupdate < Formula
  desc "Update version constraints in your Terraform configurations"
  homepage "https://github.com/minamijoyo/tfupdate"
  version "0.4.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/minamijoyo/tfupdate/releases/download/v0.4.0/tfupdate_0.4.0_darwin_amd64.tar.gz"
    sha256 "3294e5e245d7c045803c6ad97c33094d07ac8cb442e9dd9400ba5320eb702155"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/minamijoyo/tfupdate/releases/download/v0.4.0/tfupdate_0.4.0_linux_amd64.tar.gz"
      sha256 "7bbff9aed625aaf2a19e8268b10bdf9d40892ede19078d90d97e19798671f2f7"
    end
  end

  def install
    bin.install "tfupdate"
  end

  test do
    system "#{bin}/tfupdate --version"
  end
end
