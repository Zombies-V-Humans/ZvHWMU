This is the Official ZVH Rails 4 application. Currently features user and admin system with Facebook login, ransack, and devise 

### Gems we are using

- [pg](http://rubygems.org/gems/pg) for PostgreSQL
- [jQuery](https://github.com/rails/jquery-ujs)
- [Devise](https://github.com/plataformatec/devise) for authenticating users with [OmniAuth](https://github.com/intridea/omniauth) for Facebook login
- [Ransack](https://github.com/activerecord-hackery/ransack) for searching users
- [Kaminari](https://github.com/amatsuda/kaminari) for pagination

For testing and development:
- [sqlite3](http://rubygems.org/gems/sqllite) for SQLite3
- [Rspec](https://github.com/dchelimsky/rspec)
- [Cucumber](https://github.com/aslakhellesoy/cucumber) with [Capybara](https://github.com/jnicklas/capybara)
- [Database_cleaner](https://github.com/bmabey/database_cleaner)
- [Debugger](https://github.com/cldwalker/debugger)
- [Factory Girl](https://github.com/thoughtbot/factory_girl_rails)
- [Email spec](https://github.com/bmabey/email-spec)
- [Shoulda](https://github.com/thoughtbot/shoulda)
- [Thin](https://github.com/macournoyer/thin)

### Setting up
- bundle install
- rake db:setup
- rake db:migrate
- rake db:seed
- rails server


for Testing purposes our Admin user is login: Admin@zvh.edu password: password 