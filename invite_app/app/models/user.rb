class User < ActiveRecord::Base
  has_secure_password
  has_many :guests
  has_many :events
  has_many :rsvps, through: :events

  # attr_accessor :password
  # attr_accessor :password_digest

  validates :name, :presence => true
  validates :email, :presence => true, :uniqueness => true, :email => true
  #validates :password, :presence => true, :confirmation => true
  #validates :password_confirmation, :presence => { :if => :password }
  validates :cellno, :presence => true, :uniqueness => true

  def self.authenticate(email, pass)
    user = where(:email => email).first
    user && BCrypt::Password.new(user.password_digest) == pass ? user : nil
  end
  
  def password=(pass)
  	#binding.pry
    return if pass.blank?
    @password = pass
    self.password_digest = BCrypt::Password.create(pass)
  end
end
