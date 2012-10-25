require 'spec_helper'

describe "AuthenticationPages" do

	subject { page }

	describe "signin page" do
		before { visit signin_path }

		it { should have_selector('h1',    text: 'Sign in') }
		it { should have_selector('title', text: 'Sign in') }	
	end

	describe "sign in" do
		before { visit signin_path }

		describe "with invalid information" do
			before { click_button "Sign in" }

			it { should have_selector('title', text: 'Sign in') }
			it { should have_selector('div.alert.alert-error', text: 'Invalid') }

			describe "after visiting another page" do
				before { clicl_link "Home" }
				it { should_not have_selector('div.alert.alert-error') }
					
			end	
		end	
	end
	

end
