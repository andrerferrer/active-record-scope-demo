# GOAL

This is a demo to show-case how to implement a `scope` in your model.

[You can also check my other demos](https://github.com/andrerferrer/dedemos/blob/master/README.md#ded%C3%A9mos).

## What needs to be done?

### 1. 

### If you want to check it locally
```sh
repo_name="restaurants-boilerplate"
gh_repository="git@github.com:andrerferrer/$repo_name.git"
git clone $gh_repository demo
cd demo
bundle install
yarn install
rails db:create db:migrate db:seed
rails s

# now you can go to http://localhost:3000/
```

And we're good to go 🤓

Good Luck and Have Fun

---

SOURCES:
* https://guides.rubyonrails.org/active_record_querying.html#scopes
* https://apidock.com/rails/ActiveRecord/NamedScope/ClassMethods/scope
* https://stackoverflow.com/questions/14404175/query-where-date-date-today-with-rails-mysql-and-active-record
* https://stackoverflow.com/questions/13211916/rails-activerecord-find-search-by-date