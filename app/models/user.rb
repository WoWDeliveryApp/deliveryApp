class User < ActiveRecord::Base
  ### API Token-related bits
  ApiTokenLengthError = Class.new StandardError
  validates :address, presence: true
  validates :api_token, uniqueness: true
  before_create :generate_api_token!

  enum role: {
    customer: 0,
    deliveryman: 1,
    restaurant: 2
  }

  has_many :companies
  has_many :orders
  has_many :deliveries, through: :orders

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # We use Devise's #friendly_token to generate api_tokens
  def generate_api_token!
    loop do
      generated_api_token = Devise.method(:friendly_token).call
      raise ApiTokenLengthError if generated_api_token.empty?
      self.api_token = generated_api_token
      break unless self.class.exists?(api_token: api_token)
    end
  end
end
