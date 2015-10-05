#Spree Commerce: Frontend Customisation
---
I had an incredibly hard time trying to find a tutorial for customising the frontend of a Spree Commerce Storefront, so I decided to try figure it out and document my potential fails here.


##Setting up Spree Commerce with Devise
---

Create a new rails app:
```
rails new appName
```

redirect to the app directory:
```
cd appName
```
add spree, spree_gateway and spree_auth_devise to Gemfile:
```ruby
gem 'spree', github: 'spree/spree', branch: '3-0-stable'
gem 'spree_gateway', github: 'spree/spree_gateway', branch: '3-0-stable'
gem 'spree_auth_devise', github: 'spree/spree_auth_devise', branch: '3-0-stable'
```

Then, in your terminal, install all the above by running:
```
bundle install
```

configure spree devise
```
bundle exec rake spree_auth:install:migrations
bundle exec rake db:migrate
bundle exec rails g spree:auth:install
```

run this command to set up an admin user
```
bundle exec rake spree_auth:admin:create
```

You will be prompted to set your admin username and password. Set an admin username and password.

##To view your admin panel in your browser:
http://localhost:3000/admin

(it will probably take you to http://localhost:3000/login)
