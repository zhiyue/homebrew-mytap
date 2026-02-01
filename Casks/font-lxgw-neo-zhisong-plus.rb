cask "font-lxgw-neo-zhisong-plus" do
  version "1.060"
  sha256 "0398633878a2ca25f8ae735a2e7ae37570f878b407af707dbe0550355072d5a1"  

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