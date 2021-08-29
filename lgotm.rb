# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lgotm < Formula
  desc "lgotm is a command for generation LGTM image and generated image is copied to clipboard."
  homepage "https://github.com/johnmanjiro13/lgotm"
  version "0.4.3"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/johnmanjiro13/lgotm/releases/download/v0.4.3/lgotm_Darwin_x86_64.tar.gz"
      sha256 "60e297df65aac939ccb2de6aa7df29fc1a259a93cd5e2e6f80b512d224be246a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/johnmanjiro13/lgotm/releases/download/v0.4.3/lgotm_Darwin_arm64.tar.gz"
      sha256 "fda28a9897ca947f089ce0785ea67fc255ab9be5ba27c3d3758819b717b7c23d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/johnmanjiro13/lgotm/releases/download/v0.4.3/lgotm_Linux_x86_64.tar.gz"
      sha256 "667bc3db5c16eb40aecadc7324ab14ffaff6c1907055e6f62a05bac1419e50e2"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/johnmanjiro13/lgotm/releases/download/v0.4.3/lgotm_Linux_arm64.tar.gz"
      sha256 "9bfecb37a8aa57bbbc1be4a531f23f33157926da093bf7d9f1550fe8a646883e"
    end
  end

  def install
    bin.install "lgotm"
  end

  test do
    system "#{bin}/lgotm version"
  end
end
