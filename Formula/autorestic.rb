# typed: false
# frozen_string_literal: true

class Autorestic < Formula
  desc "Example binary distribution using homebrew."
  homepage "https://github.com/cupcakearmy/autorestic"
  version "1.0.7"
  bottle :unneeded



  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/cupcakearmy/autorestic/releases/download/v1.0.7/autorestic_1.0.7_Darwin_amd64.bz2"
    sha256 "234f9c3a0c0ff0d2604bc9974fce85c0fbf2fa2f18412c1ae32be6fcd994f13c"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/cupcakearmy/autorestic/releases/download/v1.0.7/autorestic_1.0.7_Darwin_arm64.bz2"
    sha256 "f06ac07d03a7b4129b474a9fa880674aa8a6d5fadcfcc7b85538635226495c2c"
  end

  def install
    bin.install "autorestic"
  end
end
