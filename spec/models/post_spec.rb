require 'rails_helper'

RSpec.describe Tag, type: :model do

  before(:each) do 
  @post = FactoryBot.create(:post)
  end



  context "validations" do

    it "is valid with valid attributes" do
      expect(@post).to be_a(Post)
      expect(@post).to be_valid
      # création qui est valide
    end

    describe "#some_attribute" do
      # teste cet attribut, en fonction de la validation que tu lui as donnée
    end

  end

  context "associations" do

    describe "tag" do
      it "should have one post" do
      tag = FactoryBot.create(:tag)
      post_1 = FactoryBot.create(:post, tag: tag)
      expect(post_1.tag).to eq(tag)
      end
    end

    describe "gossip" do
      it "should have one post" do
      gossip = FactoryBot.create(:gossip)
      post_2 = FactoryBot.create(:post, gossip: gossip)
      expect(post_2.gossip).to eq(gossip)
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