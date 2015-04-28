class Comment < ActiveRecord::Base
  belongs_to :user
  validates :body, presence: true, length: {maximum: 600}

  class << self
    def remove_excessive!
      if all.count > 100
        order('created_at ASC').limit(all.count - 50).destroy_all
      end
    end
  end
end