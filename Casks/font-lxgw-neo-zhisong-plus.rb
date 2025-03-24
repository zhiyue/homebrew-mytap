cask "font-lxgw-neo-zhisong-plus" do
  version "1.028.1"
  sha256 "1BA321BCA06605D13BE35C7BEC38E18F88D527D08E8030E1CE25A06B6C785CC9"  

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