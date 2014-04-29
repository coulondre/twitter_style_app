require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Twitter Style App' " do
      visit '/static_pages/home'
      expect(page).to have_content('Twitter Style App')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("")
    end

    it "should have a title 'Home' " do
      visit '/static_pages/home'
      expect(page).to have_title('Twitter Style App')
    end

    it "should not have a custum page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('|home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help' " do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have a title 'Help' " do
      visit '/static_pages/help'
      expect(page).to have_title('Twitter Style App | Help')
    end
  end

  describe "About page" do

    it "should have the content 'About' " do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end
    it "should have a title 'About' " do
      visit '/static_pages/about'
      expect(page).to have_title('Twitter Style App | About')
    end
  end
end
