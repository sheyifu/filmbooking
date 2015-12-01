Wow = Tag.create(name: 'Wow')
awesome = Tag.create(name: 'awesome')

Review.find(1).tags << good
Review.find(2).tags << good


What = Tag.create(name: 'What')
Wow = Tag.create(name: 'Wow')

Comment.find(1).tags << bad
Comment.find(2).tags << good