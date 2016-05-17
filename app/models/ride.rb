class Ride < ActiveRecord::Base
  belongs_to :user
  belongs_to :attraction

  def take_ride
    if user.height >= attraction.min_height && user.tickets >= attraction.tickets
      start_ride
    elsif user.height < attraction.min_height && user.tickets < attraction.tickets
      "Sorry. You do not have enough tickets the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
    elsif user.height < attraction.min_height
      "Sorry. You are not tall enough to ride the #{attraction.name}."
    elsif user.tickets < attraction.tickets
      "Sorry. You do not have enough tickets the #{attraction.name}."
    end
  end

  def start_ride
    new_happiness = user.happiness + attraction.happiness_rating
    new_nausea = user.nausea + attraction.nausea_rating
    new_tickets =  user.tickets - attraction.tickets
    user.update(
      :happiness => new_happiness,
      :nausea => new_nausea,
      :tickets => new_tickets
    )
    "Thanks for riding the #{attraction.name}!"
  end
end
