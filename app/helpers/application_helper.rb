module ApplicationHelper
  def avatar_url(user)
  	## this is section if users image is present 
    if user.avatar_url.present?
      user.avatar_url
  	## if user don't have a image already user gravatar
    else
      default_url = "#{root_url}images/guest.png"
      gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
      "http://gravatar.com/avatar/#{gravatar_id}.png?s=48&d=#{CGI.escape(default_url)}"
    end
  end
end
