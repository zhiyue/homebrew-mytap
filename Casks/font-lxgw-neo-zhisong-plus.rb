cask "font-lxgw-neo-zhisong-plus" do
  version "1.050"
  sha256 "0ed53098f531606413ccde344fba4ebb9f2f489a2189412552696584cf79abec"  

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