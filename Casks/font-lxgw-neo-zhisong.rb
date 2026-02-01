cask "font-lxgw-neo-zhisong" do
  version "1.060"
  sha256 "788e45d953276a988b468eacae4b2fbe66bb6f7a41a49b3e87465360a849b6b0"  

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