class MainController < ApplicationController
  before_action :force_json, only: :search

  def index; end

  def search
      # name_songs = Song.ransack(name_cont: params[:q]).result(distinct: true)
      # artist_songs = Song.ransack(artist_cont: params[:q]).result(distinct: true)
      # key_songs = Song.ransack(key_cont: params[:q]).result(distinct: true)
      # info_songs = Song.ransack(info_cont: params[:q]).result(distinct: true)
      # bpm_songs = Song.ransack(native_bpm_cont: params[:q]).result(distinct: true)

      @songs = Song.where("name LIKE ?", "Eric")
      # @songs = Song.where("name LIKE ? or artist LIKE ? or key LIKE ? or info LIKE ? or native_bpm >= ?",
      #   "%#{params[:q]}%",
      #   "%#{params[:q]}%",
      #   "%#{params[:q]}%",
      #   "%#{params[:q]}%",
      #    "#{params[:q]}")
      # binding.pry
  end

  private

  def force_json
    request.format = :json
  end
end
