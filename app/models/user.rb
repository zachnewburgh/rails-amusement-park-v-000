class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides

  def mood
    happiness > nausea ? "happy" : "sad" unless !happiness || !nausea
  end

end
