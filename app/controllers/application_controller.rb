class ApplicationController < ActionController::Base
    before_action :authenticate_admin!
    client_id = ENV['GOOGLE_OAUTH_CLIENT_ID']
    client_secret = ENV['GOOGLE_OAUTH_CLIENT_SECRET']

    puts "Client ID: #{client_id}"
    puts "Client Secret: #{client_secret}"
  end

  