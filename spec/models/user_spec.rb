require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do 
  @user = FactoryBot.create(:user)
  end



  context "validations" do

    it "is valid with valid attributes" do
      expect(@user).to be_a(User)
      expect(@user).to be_valid
      # création qui est valide
    end

    describe "#some_attribute" do
      # teste cet attribut, en fonction de la validation que tu lui as donnée
    end

  end

  context "associations" do

    describe "users" do
      it "should have many gossips" do
      gossip = Gossip.create(user: @user)
      expect(@user.gossips.include?(gossip)).to eq(true)
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