module ApplicationHelper

  def gravatar_for(user, options = {size: 80})
    if user.email?
      # email_address = user.email.downcase
      email_address = "samarpi2017@gmail.com"
      hash = Digest::MD5.hexdigest(email_address)
      size = options[:size]
      gravatar_url = "https:://www.gravatar.com/avatar/#{hash}?s=#{size}"
      # image_tag(gravatar_url, alt: user.username, class: "rounded shadow mx-auto d-block")
    else 
      image_tag("/img/avatar_default.png", alt: user.name, class: "gravatar")
    # image_src = gravatar_url
    # image_src
    end
  end
end
