source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '= 5.0.2'

gem 'rack-cors'
gem 'puma', '~> 3.8', '>= 3.8.2'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails', '~> 4.2', '>= 4.2.2'
gem 'rails-ujs', '~> 0.1.0'
gem 'jbuilder', '~> 2.5'
gem 'turbolinks', '= 5.0.0'

gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
gem 'bourbon', '~> 2.1', '>= 2.1.3'
gem 'bootswatch-rails', '~> 3.3', '>= 3.3.5'
gem 'coffee-rails', '~> 4.2', '>= 4.2.1'

gem 'angularjs-rails', '~> 1.5', '>= 1.5.8'
gem 'angular-ui-router-rails', '~> 0.2.15'
gem 'rails-angular-material', '~> 1.0', '>= 1.0.5'
gem 'angular-rails-templates', '~> 1.0', '>= 1.0.2'
gem 'highcharts-rails', '= 5.0.0'

group :development do
  gem 'sqlite3'
end

group :production do
  # gem 'therubyracer'
  gem 'pg'
  gem 'rails_12factor'
end

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
gem 'devise', '~> 4.2', '>= 4.2.1'
gem 'activeadmin', github: 'activeadmin'
gem 'active_admin_flat_skin', '~> 0.1.2'
gem 'active_admin_import', '~> 3.0'
gem 'active_admin_editor'
gem 'therubyracer', :platforms => :ruby
gem 'coffee-script-source', '1.8.0'
gem 'acts_as_list', '~> 0.9.0'
gem 'jquery-ace-rails', '~> 1.0', '>= 1.0.1'
gem 'chartkick'
