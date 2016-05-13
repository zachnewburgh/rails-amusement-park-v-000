class User < ActiveRecord::Base
  # validates :name, presence: true, uniqueness: { case_sentive: false }

  def mood
    if happiness && nausea
      happiness > nausea ? "happy" : "sad"
    end
  end
  
end
