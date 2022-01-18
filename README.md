# Inventory Tracker 

An inventory tracking system built with Ruby on rails 7.0.1. This is part of the Shopify Backend Developer Intern Challenge - Summer 2022.

##### Additional feature:
- Ability to create warehouses/locations and assign inventory to specific locations

### Prerequisites
- Ruby (v2.7.0)+
- SQlite3
- Node.js (v8.16.0)+
- Yarn
- Rails (v7.0.0)+

## Installation

### Clone the repository

```shell
git clone git@github.com:kim-le/inventory-tracker.git
cd inventory-tracker
```

### Check dependencies

```shell
ruby --version
```
If your version of Ruby is earlier than 3.0.0, visit [ruby-lang.org](https://www.ruby-lang.org/en/documentation/installation/) to update/install. 

```shell
sqlite3 --version
```
Verify that your shell returns a version. If your system does not have SQLite3 installed, visit the [SQLite3 website](https://www.sqlite.org/) to install.

```shell
node --version
```
If your version of Node is earlier than 8.16.0, visit the [Node.js website](https://nodejs.org/en/download/) to update/install.

```shell
yarn --version
```
Verify that your shell returns a version. If your system does not have Yarn installed, visit the [Yarn website](https://classic.yarnpkg.com/en/docs/install) to install.

```shell
rails --version
```
If your version of Rails is earlier than 7.0.0, run the following command to install:
```shell
gem install rails
```
Once all the dependencies are verified, run:
```shell
bundle && yarn
```
### Setting up the database
The follow command will initialize a new database for you:
```shell
bin/rails db:create db:migrate
```
If you would like to use a pre-populated database, run the following command afterwards:
```shell
bin/rails db:seed
```

## Run the server
To view the application on http://localhost:3000, run:
```shell
./bin/dev
```

