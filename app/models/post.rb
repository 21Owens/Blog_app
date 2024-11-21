class Post < ApplicationRecord

    def format_time
        Post.created_at(:short)
    end

end
