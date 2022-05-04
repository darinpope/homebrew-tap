# Generated with JReleaser 1.0.0 at 2022-05-04T20:55:32.360157981Z
class GreetingCli < Formula
  desc "Greeting application"
  homepage "https://github.com/darinpope/greeting-cli"
  url "https://github.com/darinpope/greeting-cli/releases/download/v0.0.1/greeting-cli-0.0.1-osx-x86_64.zip"
  version "0.0.1"
  sha256 "c8b878f9ce9b4f6117bd120b9cf0b31ea489bd0435837ccadb7122a10a7f650c"
  license "Apache-2"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/greeting-cli" => "greeting-cli"
  end

  test do
    output = shell_output("#{bin}/greeting-cli --version")
    assert_match "0.0.1", output
  end
end
