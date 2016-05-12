class User < ActiveRecord::Base
  
  def mood
    happiness > nausea ? "happy" : "sad"
  end
  
end
