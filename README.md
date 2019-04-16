# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
  remember to update the indexing for the PgSearch multisearch in console
  - PgSearch::Multisearch.rebuild(Article)
  - PgSearch::Multisearch.rebuild(Pin)

* ...

* algorithm
    - priority == 1
      ages normally, can appear on home page, can be main feature article
    - priority == 2
      same as priority 1, cannot be main feature article
    - priority == 3
      default priority, cannot appear on home page
      ages 4 times as fast
    - priority == 4
      cannot appear on home page
      ages 16 times as fast
    - priority == 5
      appears only in search
      ages 32 times as fast
