source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.3'
gem 'sqlite3'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'

gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
gem 'bourbon', '~> 4.3', '>= 4.3.4'

gem 'angularjs-rails', '~> 1.5', '>= 1.5.8'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'capybara', '~> 2.13.0'
  gem 'selenium-webdriver', '~> 3.4'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'annotate', '~> 2.7', '>= 2.7.1'
  gem 'spring'
  gem 'consistency_fail'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'jsonapi-resources'
gem 'activeadmin', github: 'activeadmin'
gem 'wdm'
gem 'active_admin_flat_skin', '~> 0.1.2'
gem 'active_admin_import', '~> 3.0'
