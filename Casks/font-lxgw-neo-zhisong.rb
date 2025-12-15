cask "font-lxgw-neo-zhisong" do
  version "1.054"
  sha256 "4206d0866335998eb0751fdefe3bbcf489e817877a506150d79a2f918303e80b"  

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