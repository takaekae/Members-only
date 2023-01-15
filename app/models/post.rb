class Post < ApplicationRecord
    validates :title, :name, presence:true
    validates :description, length: { minimum: 30 }
    validates :published_at, presence:true
    validates :user_id, presence:false
    belongs_to :user
    has_many :comments, dependent: :delete_all

end
