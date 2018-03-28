class Show < ActiveRecord::Base

  def self.highest_rating
    # this method should return the highest value in the ratings column.
    self.maximum(:rating)
  end

  def self.most_popular_show
    # returns the tv show with the highest rating
    self.order(rating: :desc)[0]
  end

  def self.lowest_rating
    #  returns the lowest value in the ratings column.
    self.minimum(:rating)
  end

  def self.least_popular_show
    # returns the tv show with the lowest rating
    self.order(rating: :asc)[0]
  end

  def self.ratings_sum
    # returns the sum of all the ratings of all the tv shows
    self.sum(:rating)
  end

  def self.popular_shows
    # returns an array of all of the shows with a rating above 5
    self.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    # returns an array of all of the shows, listed in alphabetical order
    # use the #order Active Record method
    self.order(name: :asc)
  end

end
