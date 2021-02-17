class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  before_create :build_number


  enum role: { '公會幹部': 0, '資深魔法師': 1, '新手村學徒': 2 }
  
  

  private
  def build_number
    self.number = "MPS#{Time.zone.now.to_i}"
  end


  
end