class User < ActiveRecord::Base
    attr_accessor :displaycolor
    before_save { self.email = email.downcase }
    validates :name, :email, :latitude, :longitude, :password, :password_confirmation, :presence => true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
    validates :latitude, :inclusion => {:in => 18.005611..48.987386 }
    validates :longitude, :inclusion => {:in => 62.361014..124.626080 }    
end
