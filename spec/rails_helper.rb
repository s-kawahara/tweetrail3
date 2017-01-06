# spec/rails_helper.rb
# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require 'spec_helper'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
# Add additional requires below this line. Rails is not loaded until this point!
require 'capybara/rails'   # Add
require 'capybara/rspec'   # Add


RSpec.configure do |config|
  # FactoryGirl でレシーバ無しでFactoryGirlのメソッド呼び出しを可能にする
  # Ex: FactoryGirl.create(:post) => create(:post)
  config.include FactoryGirl::Syntax::Methods  # Add
end
