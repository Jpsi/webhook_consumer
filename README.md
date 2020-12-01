# webhook_consumer

A basic Rails app that consumes webhooks with transaction data

## Setup

1. Clone this repo.
1. Use a Ruby version manager to use the correct Ruby version. E.g., for rbenv:

   - Follow the rbenv [installation instructions](https://github.com/rbenv/rbenv#installation).
   - Install the Ruby version needed for this project:

     `[webhook_consumer]$ rbenv install`

   - Check the correct Ruby version is picked up :

     `[webhook_consumer]$ rbenv which ruby`

     This should match the version in `.ruby-version`.

1. Install dependencies:

   `[webhook_consumer]$ bundle install`

1. Setup the database connection:

   - Login to the MySQL server as root:

     `$ sudo mysql`

   - Create a new MySQL user and choose password:

     `mysql> CREATE USER webhook_consumer@localhost IDENTIFIED BY 'your-password';`

   - Grant the new user privileges to create, edit and destory a subset of databases:

     `` mysql> GRANT ALL PRIVILEGES ON `webhook_consumer_%`.* TO webhook_consumer@localhost; ``

   - Give Rails access to the database through the new user. E.g., using vim:

     `[webhook_consumer]$ EDITOR="vi -f" bin/rails credentials:edit`

     Replace the mysql username and password and save the file.

   - Create and migrate the databases defined in Rails:

     ```
     [webhook_consumer]$ rails db:create
     [webhook_consumer]$ rails db:migrate
     ```

1. Check app is running as expected.

   - Run all tests and check they pass:

     `[webhook_consumer]$ rails test`

   - Start the server and check app is available on [localhost:3000](http://localhost:3000):

     `[webhook_consumer]$ rails server`
