cask "font-lxgw-neo-zhisong-plus" do
  version "1.058"
  sha256 "aee2dc333f1f45e521c619ea84239e2dd551a02eb764be86a62d0d7413f762c8"  

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