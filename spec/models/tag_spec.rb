require 'rails_helper'

RSpec.describe Tag, type: :model do

  before(:each) do 
  @tag = FactoryBot.create(:tag)
  end



  context "validations" do

    it "is valid with valid attributes" do
      expect(@tag).to be_a(Tag)
      expect(@tag).to be_valid
      # création qui est valide
    end

    describe "#some_attribute" do
      # teste cet attribut, en fonction de la validation que tu lui as donnée
    end

  end

  context "associations" do

    describe "users" do
      it "should have many post" do
      post = FactoryBot.create(:post, tag: @tag)
      expect(@tag.posts.include?(post)).to eq(true)
      end
    end

  end

  context "callbacks" do

    describe "some callbacks" do
      # teste ce callback
    end

  end

  context "public instance methods" do

    describe "#some_method" do
      # teste cette méthode
    end

  end

  context "public class methods" do

    describe "self.some_method" do
      # teste cette méthode
    end

  end

end