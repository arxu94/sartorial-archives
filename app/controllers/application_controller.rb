class ApplicationController < ActionController::Base
  # before_action :authenticate_user!

    def token_request
      token_params = {
        appId: ENV['WECHAT_APP_ID'],
        secret: ENV['WECHAT_APP_SECRET'],
        grant_type: "client_credential"
      }
      @wechat_response ||= RestClient.get("https://api.weixin.qq.com/cgi-bin/token", params: token_params)
      @getToken ||= JSON.parse(@wechat_response.body)
  end

end
