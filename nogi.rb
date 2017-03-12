class Nogi < Formula
  desc "Nogizaka46 Command Line Interface"
  homepage "https://github.com/tzmfreedom/nogi"

  @@version = "0.1.0"
  version @@version

  if Hardware::CPU.is_64_bit?
    @@binname = 'nogi-darwin-amd64'
    url "https://github.com/tzmfreedom/nogi/releases/download/v#{@@version}/#{@@binname}"
    sha256 '010af0baeebab6f3d89fcd1e9d9278eb1f9607d4ba5d15bcb63efd68669d5eac'
  else
    @@binname = 'nogi-darwin-386'
    url "https://github.com/tzmfreedom/nogi/releases/download/v#{@@version}/#{@@binname}"
    sha256 '4a81f946cd2417a490248f1a6daef41d535339aa3274f4b875f03b1e3aafc5ba'
  end

  def install
    mv @@binname, 'nogi'
    bin.install 'nogi'
  end

  test do
    system "false"
  end
end

