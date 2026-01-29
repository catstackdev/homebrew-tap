class Dockman < Formula
  desc "Docker Compose manager with presets and shortcuts"
  homepage "https://github.com/catstackdev/dockman"
  version "0.2.4"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/catstackdev/dockman/releases/download/v0.2.4/dockman_0.2.4_Darwin_arm64.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256"
    else
      url "https://github.com/catstackdev/dockman/releases/download/v0.2.4/dockman_0.2.4_Darwin_x86_64.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/catstackdev/dockman/releases/download/v0.2.4/dockman_0.2.4_Linux_arm64.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256"
    else
      url "https://github.com/catstackdev/dockman/releases/download/v0.2.4/dockman_0.2.4_Linux_x86_64.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256"
    end
  end

  def install
    bin.install "dockman"
    
    # Install shell completions
    bash_completion.install "completions/dockman.bash" => "dockman"
    zsh_completion.install "completions/_dockman" => "_dockman"
    fish_completion.install "completions/dockman.fish"
  end

  test do
    system "#{bin}/dockman", "version"
  end
end
