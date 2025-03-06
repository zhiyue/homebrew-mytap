cask "trae" do
  arch arm: "arm64", intel: "x64"
  
  # 使用固定版本号，但URL从API动态获取
  version "1.0.8277"
  sha256 :no_check

  livecheck do
    url "https://api.marscode.cn/icube/api/v1/native/version/trae/latest"
    strategy :json do |json|
      json["data"]["manifest"]["darwin"]["version"]
    end
  end

  url do
    require "json"
    require "net/http"
    require "timeout"
    
    api_url = "https://api.marscode.cn/icube/api/v1/native/version/trae/latest"
    uri = URI(api_url)
    response = Net::HTTP.get(uri)
    json_data = JSON.parse(response)
    
    download_data = json_data["data"]["manifest"]["darwin"]["download"]
    
    # 尝试获取最快的CDN
    fastest_url = nil
    min_time = Float::INFINITY
    
    download_data.each do |region_data|
      cdn_url = arch == "arm64" ? region_data["apple"] : region_data["intel"]
      cdn_uri = URI(cdn_url)
      
      begin
        Timeout::timeout(3) do  # 设置3秒超时
          start_time = Time.now
          Net::HTTP.start(cdn_uri.host, cdn_uri.port, use_ssl: cdn_uri.scheme == 'https') do |http|
            http.read_timeout = 2  # 设置读取超时
            http.head(cdn_uri.path)
          end
          response_time = Time.now - start_time
          
          if response_time < min_time
            min_time = response_time
            fastest_url = cdn_url
          end
        end
      rescue
        next  # 如果连接超时或失败，尝试下一个CDN
      end
    end
    
    # 如果所有CDN都无法连接，使用默认的中国区CDN
    fastest_url || (arch == "arm64" ? download_data[0]["apple"] : download_data[0]["intel"])
  end

  name "Trae IDE"
  desc "集成开发环境，支持AI辅助编程"
  homepage "https://trae.com.cn"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Trae.app"

  zap trash: [
    "~/Library/Application Support/trae",
    "~/Library/Caches/trae",
    "~/Library/Logs/trae",
    "~/Library/Preferences/com.trae.plist",
    "~/Library/Saved Application State/com.trae.savedState"
  ]
end
