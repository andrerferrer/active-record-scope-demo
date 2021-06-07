# GOAL

This is a demo to show-case how to implement a `scope` in your model.

[You can also check my other demos](https://github.com/andrerferrer/dedemos/blob/master/README.md#ded%C3%A9mos).

## What needs to be done?

* [Add booked on to restaurants](https://github.com/andrerferrer/active-record-scope-demo/commit/5685312106ff5a223d1a7519aea37c7c7bc65db2)
* [add some booking seeds](https://github.com/andrerferrer/active-record-scope-demo/commit/916e075bbf3f2d125f018cd9b6e0839412b2abee)
* [Make Restaurant has many bookings](https://github.com/andrerferrer/active-record-scope-demo/commit/18fab3a98c6c50df2b4c877fb3af2fd9ad1f7154)
* [add scope for past and future bookings](https://github.com/andrerferrer/active-record-scope-demo/commit/a9994ca9acbd810a163c334096dafb0a7e636734)
* [Improve it with a faster query](https://github.com/andrerferrer/active-record-scope-demo/commit/9d2fa607b1bc22ea663990b562b8f1dd97c970eb)


## How to use it

Now, we can query bookings that were created before or after today with those scopes:
```ruby
  scope :past, -> { where('booked_on < ?', Date.today.to_s) } 
  scope :future, -> { where('booked_on > ?', Date.today.to_s) }
```

And how do they work? Well, they just make it easier for us.

Instead of doing:
```ruby
Booking.where('booked_on < ?', Date.today.to_s)
```

now, we can do:
```ruby
Booking.past
```

to retrieve all the bookings in the past.

We can also use it with associations.

If we want to find all past bookings for the first restaurant, all that has to be done is:
```ruby
Restaurant.first.bookings.past
```

Really cool right?


### If you want to check it locally
```sh
repo_name="active-record-scope-demo"
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
