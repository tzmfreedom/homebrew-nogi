class Nogi < Formula
  desc "Nogizaka46 Command Line Interface"
  homepage "https://github.com/tzmfreedom/nogi"

  @@version = "0.1.0"
  version @@version

  if Hardware::CPU.is_64_bit?
    @@binname = 'nogi-darwin-amd64'
    url "https://github.com/tzmfreedom/nogi/releases/download/v#{@@version}/#{@@binname}"
    sha256 '5b1d56dccc1234102677ab0a11b44a9b86a066710d4f2a5f589a7b39a178b90a'
  else
    @@binname = 'nogi-darwin-386'
    url "https://github.com/tzmfreedom/nogi/releases/download/v#{@@version}/#{@@binname}"
    sha256 '8843dd03ba8d85bce0b9607d985f5d002f8f16cb77612b66b2aca3140aa198b6'
  end

  def install
    mv @@binname, 'nogi'
    bin.install 'nogi'
  end

  test do
    system "false"
  end
end

