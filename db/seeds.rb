Wow = Tag.create(name: 'Wow')
awesome = Tag.create(name: 'awesome')

Review.find(1).tags << ruby
Review.find(2).tags << java
