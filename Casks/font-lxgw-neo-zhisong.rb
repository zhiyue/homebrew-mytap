cask "font-lxgw-neo-zhisong" do
  version "1.035"
  sha256 "bf71824341ac2329369c7758ca9040855c95c3c1a72b3fbfd8bf331f33d200ce"  

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