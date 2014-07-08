require 'spec_helper'


describe "StaticPages" do
  before { visit root_path}
  subject{page}
  let(:base_title){"Ruby on Rails Tutorial Sample App"}
  

  describe 'Home Page' do
    it { should have_content('Sample App') } 

    it { should have_title("#{base_title}") }

    it { should_not have_title('| Home') }
  end

  describe 'Help Page' do
    before { visit help_path}
    subject{page}
    it { should have_content('Help') }

    it { should have_title("#{base_title} | Help") }
  end

  describe 'About Page' do
    before { visit about_path}
    subject{page}

    it { should have_content('About') }

    it {should have_title("#{base_title} | About Us") }
  end
  
  describe 'Contact Page' do
    before { visit contact_path}
    subject{page}
  
    it {should have_title("#{base_title} | Contact Us") }
    
    it {should have_content('Send compliments here') }
  end
 
end
