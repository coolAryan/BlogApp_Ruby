module ApplicationHelper

    def gravatar_for(user,options=80)
        email_addr=user.email
        hash=Digest::MD5.hexdigest(email_addr)
        gravatar_url="https://www.gravatar.com/avatar/#{hash}?s=#{options}"
        image_tag(gravatar_url,alt:user.name,class:"rounded shadow mx-auto my-4 d-block")
    end

end
