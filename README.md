#Spree Commerce: Frontend Customisation

I had an incredibly hard time trying to find a tutorial for customising the frontend of a Spree Commerce Storefront, so I decided to try figure it out and document my potential fails here.


##Setting up Spree Commerce with Devise

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

Setting up spree devise
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
[http://localhost:3000/admin](http://localhost:3000/admin)

(it will probably take you to http://localhost:3000/login)

##Using Deface to edit HTML
To change the logo, create a new file `logo.rb` in `app/overrides/` and paste the following into the file:

```ruby
Deface::Override.new(:virtual_path => "spree/shared/_header", 
                     :name => "logo", 
                     :replace_contents => "#logo", 
                     :text => "<h1>Store</h1>")
```

##Editing CSS
To change the background of `#spree_header`, to to `vendor/stylesheets/frontend/all.css` and paste the following in to override existing background:
```
#spree-header {
  background: red;
}
```

##Editing the logo image in spree.rb
To change the logo using this method, open `config/initializers/spree.rb` and add the following:
```ruby
Spree.config do |config|
  config.admin_interface_logo = 'logo/logo.jpg'
  config.logo = 'logo/logo.jpg'
end
```
Make sure to add your logo image to `app/assets/images/` if you want it to show up