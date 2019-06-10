# Tsundoku Backend

Tsundoku is a web app that let's users to save their bookmarks and share it with others.

- How to set up:
  - Prerequisites
    - Ruby 2.5.1
    - Rails 5.2.2.1
    - PostgreSQL

* How to run:

  - `git clone https://github.com/peter-keller/tsundoku_api`
  - `cd tsundoku_api`
  - `bundle install`
  - `bin/rails credentials:edit`
  - `rails db:create`
  - `rails db:migrate`
  - `rails db:seed`
  - `rails s`
  - Once it's done, the app will run on `http://localhost:3000`

The front end of this project can be found here:

### [Tsundoku Frontend](https://github.com/peter-keller/tsundoku_client)
