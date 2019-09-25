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
group.events.left_joins(:event_votes).group('events.id').order('average_event_votes_score DESC NULLS LAST').average('event_votes.score')
# => {2=>0.35e1, 1=>0.15e1, 3=>nil}
```

>hash output is:  events.id => average score, ... 
> Current example is for PostgreSQL (solving of NULL order)
> for mysql is similar functionality done by: order('-average_event_votes_score DESC') (this -)
