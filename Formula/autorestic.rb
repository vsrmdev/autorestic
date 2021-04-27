class Autorestic < Formula
    desc "High level CLI utility for restic"
    homepage "https://autorestic.vercel.app/"
    url "https://github.com/vsrmdev/autorestic/archive/v1.0.7.tar.gz"
    sha256 "cb3b6614aa4ca7f56192a9d9cfbd46acd8abdad2338cf2f3e2496a859d78f905"
    license "Apache-2.0"
    head "https://github.com/vsrmdev/autorestic.git"
  
    depends_on "go" => :build
  
    def install
      ENV["GOPATH"] = HOMEBREW_CACHE/"go_cache"
  
      system "go", "run", "build/build.go"
  
      bin.install "autorestic"
    end
  
    test do
      system "autorestic", "help"
    end
end
