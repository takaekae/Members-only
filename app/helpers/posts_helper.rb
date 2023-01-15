module PostsHelper
    def date_time(post)
        post.created_at.strftime("%m/%d/%Y at %I:%M%p")
    end

  def username
    email.split('@')[0].capitalize
  end
end
