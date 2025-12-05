cask "font-lxgw-neo-zhisong" do
  version "1.052"
  sha256 "2954e9fefe609bf409033423e158868acbf7d73e158533d1e169aef63beaa38b"  

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