class Cs < Formula
  desc 'A tool for interacting with Cosense API'
  homepage 'https://github.com/kawakamimoeki/cs'
  url 'https://github.com/kawakamimoeki/cs/archive/refs/tags/v0.1.16.tar.gz'
  sha256 '4baa875c9911d294e8e9a825252748be04ed141024addfb43f21380664d0ffe9'

  depends_on 'rust' => :build

  def install
    system 'cargo', 'install', '--root', prefix, '--path', '.'
  end

  test do
    output = shell_output("#{bin}/cs --help")
    assert output.start_with?('Usage: cs <COMMAND>')
  end
end
