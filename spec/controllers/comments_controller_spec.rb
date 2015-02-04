require 'spec_helper'

describe CommentsController do

  describe "GET 'chat'" do
    it "returns http success" do
      get 'chat'
      response.should be_success
    end
  end

  describe "GET 'map'" do
    it "returns http success" do
      get 'map'
      response.should be_success
    end
  end

  describe "GET 'info'" do
    it "returns http success" do
      get 'info'
      response.should be_success
    end
  end

end
