class User < ApplicationRecord
    validates :email, presence: true
    validates :full_name , presence: true
    validates :gender ,presence: true
    validates :nick_name, presence: true
    validates :dob , presence: true
end
