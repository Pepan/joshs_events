# README

* Database creation and initialization:
 ```rake db:drop db:create db:migrate db:seed```

* How to run the test suite: 
```rails c```

```ruby
group = Group.find 1
group.event_votes
group.event_votes.order score: :asc
group.event_votes.order score: :desc
```
