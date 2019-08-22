class Show < ActiveRecord::Base
  
  def self.highest_rating
    self.maximum(:rating)
  end
  
  def self.most_popular_show
    self.all.order(rating: :desc).limit(1)[0]
  end
  
  def self.lowest_rating
    self.minimum(:rating)
  end
  
  def self.least_popular_show
    self.all.order(rating: :asc).limit(1)[0]
  end
  
  
end