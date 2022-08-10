# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfupdate < Formula
  desc "Update version constraints in your Terraform configurations"
  homepage "https://github.com/minamijoyo/tfupdate"
  version "0.6.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/minamijoyo/tfupdate/releases/download/v0.6.6/tfupdate_0.6.6_darwin_arm64.tar.gz"
      sha256 "e5d6be9ddf19d8659567ae167819bb1ad226d3e27081d6b6db3c87b1c8fb19ab"

      def install
        bin.install "tfupdate"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/minamijoyo/tfupdate/releases/download/v0.6.6/tfupdate_0.6.6_darwin_amd64.tar.gz"
      sha256 "273769790f6d05133a751dcb84289abe99d50b31b5bc38f0093c4d04e2b2b155"

      def install
        bin.install "tfupdate"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/minamijoyo/tfupdate/releases/download/v0.6.6/tfupdate_0.6.6_linux_arm64.tar.gz"
      sha256 "f1431d2d1b9c81e925e4a06ff7ebb2428f30e9ff74e24e8fb7910ad82e2cf3a2"

      def install
        bin.install "tfupdate"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/minamijoyo/tfupdate/releases/download/v0.6.6/tfupdate_0.6.6_linux_amd64.tar.gz"
      sha256 "46ccfb2456ad6cef21e51d9ba8cfb5f500704449002e2b537efc8b7b72f95a78"

      def install
        bin.install "tfupdate"
      end
    end
  end

  test do
    system "#{bin}/tfupdate --version"
  end
end
