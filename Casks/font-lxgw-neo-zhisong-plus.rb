cask "font-lxgw-neo-zhisong-plus" do
  version "1.030"
  sha256 "ceffba26f2a83a0629056ca0219d1b53ea764eb8c8582ffae239ac5003078a4b"  

  url "https://github.com/lxgw/LxgwNeoZhiSong/releases/download/v#{version}/LXGWNeoZhiSongPlus.ttf"
  name "LXGW Neo ZhiSong Plus"
  name "霞鹜新致宋 Plus"
  desc "开源中文字体，基于霞鹜文楷的衍生字体增强版本"
  homepage "https://github.com/lxgw/LxgwNeoZhiSong"

  livecheck do
    url "https://github.com/lxgw/LxgwNeoZhiSong/releases"
    strategy :github_releases
    regex(/^v?(\d+(?:\.\d+)+(?:\.\d+)?)$/i)
  end

  font "LXGWNeoZhiSongPlus.ttf"
end