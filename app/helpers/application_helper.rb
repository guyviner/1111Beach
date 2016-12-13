module ApplicationHelper
  def gravatar_for(user, opts = {})
    opts[:alt] = user.username
    image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.username)}?s=#{opts.delete(:size) { 40 }}",
              opts
  end
end
