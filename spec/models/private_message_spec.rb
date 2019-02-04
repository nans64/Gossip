require 'rails_helper'

RSpec.describe PrivateMessage, type: :model do

  before(:each) do 
  @private_message = FactoryBot.create(:private_message)
  end



  context "validations" do

    it "is valid with valid attributes" do
      expect(@private_message).to be_a(PrivateMessage)
      expect(@private_message).to be_valid
      # création qui est valide
    end

    describe "#some_attribute" do
      # teste cet attribut, en fonction de la validation que tu lui as donnée
    end

  end

  context "associations" do

    describe "tag" do
      it "should have one sender" do
      sender = FactoryBot.create(:user)
      private_message = FactoryBot.create(:private_message, sender: sender)

      expect(private_message.sender).to eq(sender)

      end
    end

    describe "tag" do
      it "should have one recipient" do
      recipient = FactoryBot.create(:user)
      private_message_2 = FactoryBot.create(:private_message, recipient: recipient)

      expect(private_message_2.recipient).to eq(recipient)
      
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