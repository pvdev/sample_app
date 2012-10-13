require 'spec_helper'

describe SessionsHelper do

  let(:user) { FactoryGirl.create(:user) }

  describe "after calling sign_in" do
    before { sign_in(user) }

    it "the current user is known" do
      @current_user.should == user
    end

  end

  describe "after calling sign_out" do
    before { sign_in(user); sign_out }

    it "the current user is nil" do
      @current_user.should be_nil
    end

  end

end
