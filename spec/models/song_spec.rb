require 'rails_helper'

RSpec.describe Song, type: :model do
  before(:all) do
    @song = Song.new(name: "Sandstorm", artist: "Darude", key: "11", native_bpm: "111", photo: "image/upload/v1574263004/e2ob8sbkf2wsw2m7onjd.jpg")
  end

  it "should have a track name" do
    expect(@song.name).to eq("Sandstorm")
  end

  it "should have a artist name" do
    expect(@song.artist).to eq("Darude")
  end

  it "should have a key" do
    expect(@song.key).to eq("11")
  end

  it "should have a photo saved with PhotoUploader" do
    expect(@song.photo).to be_a PhotoUploader
  end

  it "should have a native_bpm" do
    expect(@song.native_bpm).to eq(111)
    expect(@song.native_bpm).to be_a Integer
  end
end
