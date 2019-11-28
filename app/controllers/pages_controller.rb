class PagesController < ApplicationController

  def home
    @songs = Song.all.sort_by(&:date_uploaded).reverse
  end

end
