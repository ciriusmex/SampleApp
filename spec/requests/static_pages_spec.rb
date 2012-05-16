require 'spec_helper'

describe "StaticPages" do
	subject { page }

	describe "Home page" do
		before { visit root_path }

		it { should have_selector('h1', text: 'Sample App') }
		it { should have_selector('title', text: fullTitle('')) }
		it { should_not have_selector 'title', text: '| Home' }
	end

	describe "Help page" do
		before { visit help_path }

		it { should have_selector('p', text: 'Sample App') }
		it { should have_selector('title', text: fullTitle('Help')) }
	end

	describe "About page" do
		before { visit about_path }

		it { should have_selector('p', text: 'Sample App') }
		it { should have_selector('title', text: fullTitle('About Us')) }
	end

	describe "Contact page" do
		before { visit contact_path }

		it { should have_selector('p', text: 'Sample App') }
		it { should have_selector('title', text: fullTitle('Contact')) }
	end
end
