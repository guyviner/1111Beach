module ApplicationHelper
  def gravatar_for(user, opts = {})
    opts[:alt] = user.username
    image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.username)}?s=#{opts.delete(:size) { 40 }}", opts
  end

  def emojify(content)
  h(content).to_str.gsub(/:([\w+-]+):/) do |match|
    if emoji = Emoji.find_by_alias($1)
      %(<img alt="#$1" src="#{image_path("emoji/#{emoji.image_filename}")}" style="vertical-align:middle" width="20" height="20" />)
    else
      match
    end
  end.html_safe if content.present?
end

  # def online_status(user)
  # content_tag :span, user.name,
  #             class: "user-#{user.id} online_status #{'online' if user.online?}"
  # end
end
