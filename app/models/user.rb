class User < ActiveRecord::Base

  class << columns_hash['birthday']
    def type
      :date
    end
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_confirmation_of :email, :message => ' should match confirmation '
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :email, :presence => true
  validates :email, :confirmation => true
  validates :email_confirmation, :presence => true
  validates :birthday, :presence => true
  validates :gender, :presence => true

end
