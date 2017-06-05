require_relative 'gilded_rose'

class Tickets < Item

  def initialize(args)
    @name = args[:name]
    @sell_in = args[:sell_in]
    @quality = args[:quality]
  end

  def update
    self.passage_of_time
    increase_ticket_value
    limit_ticket_quality
  end

  private

  def increase_ticket_value
    if quality < 50
      self.improve
      self.improve if sell_in <= 10
      self.improve if sell_in <= 5
    end
  end

  def limit_ticket_quality
    self.quality = 50 if quality > 50
    self.quality = 0 if sell_in <= 0
  end
end
