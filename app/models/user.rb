class User < ActiveRecord::Base
  # validates :name, presence: true, uniqueness: { case_sentive: false }

  def mood
      happiness > nausea ? "happy" : "sad" unless !happiness || !nausea
  end
  
end
