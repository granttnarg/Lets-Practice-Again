require 'rails_helper'

Rspec.describe Song, type: :model do
  before(:all) do
    @song = Song.new(name: "Sandstorm", artist: "Darude", key: "11", native_bpm: "111")
  end

  it "should have a track name" do
    expect(@song.name).to eq("Sandstorm")
  end
end
