cask "font-lxgw-neo-zhisong" do
  version "1.030.1"
  sha256 "80580146fad94b20e38c818a660bffa91719b417e71b570774cae4998a769985"  

  url "https://github.com/lxgw/LxgwNeoZhiSong/releases/download/v#{version}/LXGWNeoZhiSong.ttf"
  name "LXGW Neo ZhiSong"
  name "霞鹜新致宋"
  desc "开源中文字体，基于霞鹜文楷的衍生字体"
  homepage "https://github.com/lxgw/LxgwNeoZhiSong"

  livecheck do
    url "https://github.com/lxgw/LxgwNeoZhiSong/releases"
    strategy :github_releases
    regex(/^v?(\d+(?:\.\d+)+(?:\.\d+)?)$/i)
  end

  font "LXGWNeoZhiSong.ttf"
end