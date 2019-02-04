require 'rails_helper'

RSpec.describe Gossip, type: :model do

  before(:each) do 
  @gossip = FactoryBot.create(:gossip)
  end



  context "validations" do

    it "is valid with valid attributes" do
      expect(@gossip).to be_a(Gossip)
      expect(@gossip).to be_valid
      # création qui est valide
    end

    describe "#some_attribute" do
      # teste cet attribut, en fonction de la validation que tu lui as donnée
    end

  end

  context "associations" do

    describe "posts" do
      it "should have many posts" do
      post = FactoryBot.create(:post, gossip: @gossip)
      expect(@gossip.posts.include?(post)).to eq(true)
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