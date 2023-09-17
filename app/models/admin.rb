class Admin < ApplicationRecord
  ENV['GOOGLE_OAUTH_CLIENT_ID'] = '34894999401-19hg5rerpgml37n09trp31ah0jncd4ki.apps.googleusercontent.com'
  ENV['GOOGLE_OAUTH_CLIENT_SECRET'] = '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'
  devise :omniauthable, omniauth_providers: [:google_oauth2]
  
  def self.from_google(email:, full_name:, uid:, avatar_url:)
    return nil unless email =~ /@gmail.com || @tamu.edu\z/
    create_with(uid: uid, full_name: full_name, avatar_url: avatar_url).find_or_create_by!(email: email)
  end
end
