

    User.create(name:'joe bloggs', email:'jb@here.com', password: "secret", password_confirmation: "secret")
    User.create(name:'joe Cloggs', email:'jc@here.com', password: "secret", password_confirmation: "secret")
    User.create(name:'jim smith', email:'js@here.com', password: "secret", password_confirmation: "secret")

    user = User.find(3)
    user.movies.create(title: 'The Godfather', decription: 'When the aging head of a famous crime family decides to transfer his position to one of his subalterns, a series of unfortunate events start happening to the family, and a war begins between all the well-known families leading to insolence, deportation, murder and revenge, and ends with the favorable successor being finally chosen. ', movie_length:'100', director:'Yorgos Lanthimos',rating: '7.7', image_file_name:'MV5BMjA5MTc3NDE2MV5BMl5BanBnXkFtZTcwMDM5MTk5MQ__._V1_SY317_CR21_0_214_317_AL_.jpg',image_content_type: 'image/jpeg', image_file_size:'15935')
    user.movies.create(title: 'Chung Hing sam lam', decription: 'Wong Kar-Wai movie about two love-struck cops is filmed in impressionistic splashes of motion and color. The first half deals with Cop 223, who has broken up with his girlfriend of five years. He purchases a tin of pineapples with an expiration date of May 1 each day for a month. By the end of that time, he feels that he will either be rejoined with his love or that it too will have expired forever. The second half shows Cop 663 dealing with his breakup with his flight attendant girlfriend. He talks to his apartment furnishings until he meets a new girl at a local lunch counter. ', movie_length:'100', director:' Kar Wai Wong',rating: '90', image_file_name:'MV5BMjA5MTc3NDE2MV5BMl5BanBnXkFtZTcwMDM5MTk5MQ__._V1_SY317_CR21_0_214_317_AL_.jpg',image_content_type: 'image/jpeg', image_file_size:'78953')
    user.movies.create(title: 'Buddha Mountain', decription: 'This film chronicles the lives of three youths who have no intention of sitting exams and getting into universities and a retired Chinese opera singer who is mourning the death of her son. The film explores themes of teenage confusion, angst, and rebellion and the impermanence of life. ', movie_length:'100', director:'Li Yu',rating: '75', image_file_name:'p859469233.jpg',image_content_type: 'image/jpeg', image_file_size:'83796')

    user = User.find(1)
    review = Review.new(:content => "I Like It")
    review.user = user
    review.movie = Movie.find(5)
    review.save

    user = User.find(1)
    review = Review.new(:content => "Wow")
    review.user = user
    review.movie = Movie.find(7)
    review.save

    user = User.find(1)
    review = Review.new(:content => "awesome")
    review.user = user
    review.movie = Movie.find(7)
    review.save

    good = Tag.create(name: 'Good')
    bad = Tag.create(name: 'Bad')
    soso = Tag.create(name: 'Soso')

    Review.find(5).tags << bad
    Review.find(15).tags << good
    Review.find(14).tags << soso


    user = User.find(1)
    user.news.create(title: 'The Martian shows Hollywood Chinese connection has lift-off', context: 'US talkshow host Stephen Colbert recently lampooned the phenomenon, but evidence is stacking up that shoehorning in a China-set scene actually works for Hollywood blockbusters. The Martian, in which the China National Space Administration saves both Nasa’s and Matt Damon’s asses, has just opened strongly over there with $50.1m (£33.3m). You can’t discount the importance of being the autumn’s breakout blockbuster elsewhere – but nor can Ridley Scott’s plot choices be dismissed, especially in the light of other films that have climbed on board what Colbert has dubbed the “Pander Express”. Roland Emmerich’s 2012 wasn’t the first tentpole release to do it (that was probably Mission: Impossible 3, a little too early in 2006).But having the Chinese army save the day saw an unmistakeable bounce ($68.7m) in that country for a relatively star-light film in 2009. Skyfall’s Shanghai and Macau-set scenes were partly censored, but the Bond franchise still more than doubled its take there (Skyfall: $59.2m; Quantum of Solace: $21m). Transformers: Age of Extinction trashed Hong Kong on its way to a Hollywood record in China ($320m) that stood until Furious 7 this year. Some of these leaps are admittedly difficult to untangle from Chinese box-office growth overall. The one that undeniably outperforms even that is Iron Man 3, which came in a separate, tailored version (ie with a couple of extra scenes) and whose marketing was carefully honed by local powerhouse DMG. The result: a stupendous hike from previous Iron Mans (1: $15.2m; 2: $7.9m; 3: $121.2m). Now imagine what Hollywood could achieve with an actual Chinese protagonist.', image_file_name:'4501.jpg',image_content_type: 'image/jpeg', image_file_size:'100003')
    user.news.create(title: '‘Justice League Dark’ Wants Colin Farrell as John Constantine? ', conrext: 'Last month, we reported that Warner Bros.long-gestating Justice League Dark, a.k.a. Dark Universe, is finally moving forward, with Scott Rudin coming aboard to produce alongside Guillermo del Toro. While the studio still does not have a director in place, after Guillermo del Toro backed out this past summer, they hope to shoot Justice League Dark at some point in 2016. Guillermo del Toro revealed last year that his script will feature DC Comics characters such as John Constantine, Swamp Thing, Deadman, Shade, Madame Xanadu, Etrigan The Demon and Zatanna. According to a new report from Latino Review, the studio is eyeing Colin Farrell to play John Constantine. Colin Farrell, who is currently filming Warner Bros Harry Potter prequel Fantastic Beasts and Where to Find Them, is considered the front runner to play John Constantine, but Ewan McGregor is also in the mix for this role. The report claims that whichever actor does not land that role, could be cast as Jason Blood, the human version of Etrigan the Demon. The site also claims that Monica Bellucci is the top choice to play Madame Xanadu, and that Ron Perlman is being eyed to play Swamp Thing. Both the studio and producer are said to agree that Ron Perlman playing Swamp Thing is "a good idea." Warner Bros. is rumored to be looking for an actor with comedic sensibilities to play Deadman, while also searching for a Hispanic or black actress to play Zantanna. The studio is also said to be in the process of hearing pitches from directors who want to take the reins on Justice League Dark, but it is not known if the studio is close to making a decision on who will direct Justice League Dark. The site reports that the studio disagreed with Guillermo del Toro choice for Constantine. While it was not revealed who his choice was, the filmmaker hinted in an interview last August that he may be eyeing Matt Ryan, who starred as the title character on NBC short-lived Constantine TV series. Unlike Marvel, the DC Comics movie and TV worlds have been kept separate, especially with a new version of The Flash hitting the big screen in 2018, while The CW airs its incarnation of The Flash on Tuesday nights. Colin Farrell will next be seen in The Lobster and Solace, neither of which have domestic release dates set at this time. Monica Bellucci can currently be seen on the big screen in Spectre, and Ron Perlman recently starred in Stonewall and the Amazon Studios TV series Hand of God. Do you think these actors are the best choices to play John Constantine, Madame Xanadu and Swamp Thing in Justice League Dark? Read more at: https://tr.im/tG3tq', image_file_name:'NEMrGzMZusUYRO_2_b.jpg',image_content_type: 'image/jpeg', image_file_size:'105760')
    user.news.create(title: '‘Carol’ Filmmakers Fight for Long-Overdue Awards Recognition', context: 'Director Todd Haynes and his longtime producer, Christine Vachon, are indie icons but the Academy has mysteriously looked the other way for years Going into Monday night’s Gotham Awards, “Carol” is the most celebrated, raved-about and nominated independent film of the year. So why does it still feel like something of an underdog this awards season, particularly when it comes to the Oscars? You can partly chalk it up to the film’s subtlety and understatement, which are sadly not qualities that register with voters very often. And you can add a sobering and surprising statistic about two of the indie icons who helped make the exquisite, ’50s-set romance: Todd Haynes has never been nominated for an Oscar for directing, and Christine Vachon has never been nominated in any category. Also Read: Carol Review: Cate Blanchett Radiates Passion in Todd Haynes Near-Perfect Masterpiece At a time when independent films routinely dominate the Oscars, when “Birdman” can go from the Gothams to the Spirit Awards to the Oscars and win all three, it’s unfortunate that two of the most respected figures in the indie world could have been shut out by the Academy — and troubling that they shouldn’t be slam-dunk contenders for a film as elegant and moving as “Carol.” The film is up for three Gothams, including Best Feature, Best Screenplay and Best Actress (Cate Blanchett). It led all films in nominations for the other major independent-film award, the Film Independent Spirit Awards, with six nods that included feature, director and actress for both Blanchett and Rooney Mara. It is also one of the best-reviewed films of the year, with a score of 94 on Metacritic, topping every narrative film except the animated “Anomalisa.” And in the recent Sight and Sound listing of the year’s 20 best movies, it came in at No. 2, behind only Hou Hsiao-hsien’s “The Assassin.” The raves have been steady since the Weinstein Company film premiered at the Cannes Film Festival — but in a year with a surprising abundance of films built around female protagonists (“Brooklyn,” “Joy,” “Room”), the quietest and subtlest film of the batch is also a quiet voice during awards season, with fellow indies “Spotlight” and “Room” landing higher in most pundits’ predictions.', image_file_name:'CAROL_teaser-trailer.jpg',image_content_type: 'image/jpeg', image_file_size:'41357')

    user = User.find(1)
    comment = Comment.new(:content => "wow")
    comment.user = user
    comment.news = News.find(1)
    comment.save

    user = User.find(1)
    comment = Comment.new(:content => "wow")
    comment.user = user
    comment.news = News.find(2)
    comment.save

    user = User.find(3)
    comment = Comment.new(:content => "That is good")
    comment.user = user
    comment.news = News.find(1)
    comment.save

    user = User.find(3)
    user.post.create(title: 'A different kind of Wuxia', context: 'Probably the best way to watch "The Assassin" is to play it as 1.5 times the speed. On a serious note, the film takes Wuxia to an entirely different level. If Ozu had made Wuxia films then probably those films would have looked something like "The Assassin". Watching the film is like studying a life in slow motion. While the detailing is meticulous, the storytelling style can best be described as tedious. The action sequences, although beautifully choreographed, are minimalistic in style. In her third collaboration with the master Taiwanese filmmaker Hou Hsiao-Hsien, Shu Qi delivers a mesmerizing performance while playing a part that is tender and feral in equal parts. It is difficult to detest the ferocious killer she has become. It is difficult not to fall in love with the assassin who once was a princess. It is difficult not to be in awe of Hou Hsiao-Hsien after watching the film. It is difficult to wipe off the images from mind long after the end credits begin to roll. It is difficult to just watch it once.For more on the world of cinema, please visit my film blog "A Potpourri of Vestiges".')
    user.post.create(title: 'Moody Mis-en-scene ', conrext: 'The most attractive factor that lies in this masterpiece of a film is not the beautiful lead actors. It is not their outstanding acting and sizzling chemistry either. To me, it is the mis-en-scene of the entire movie. The settings, the lighting, the props... all add to the mood for love between the main characters. A whiff of smoke from Chow cigarette tells us his state of mind, the ever-changing tight-fitting cheongsams of Lizhen reflects the constraints of decision-making, the ruins of Angkor Wat ties in with the deteriorating relationship of the two leads. The excellent use of mis-en-scene gives the film just the right amount of feel needed to flesh out the complicated nature of the characters relationship. The film leaves the audience fruitlessly yearning for more.')
    user.post.create(title: 'Whats going on with these haters--- Something fishy!', context: 'I have been reading the reviews for this film before it opened. What I have noticed is that it has gone up in its rating by over 1.5 points in the IMDb rating scale since opening (from under a 5 to a 6.0).... I noticed that most of the worst reviews were written and posted before it even opened? That got me wondering.... are these "reviewers" really reviewing this film or have they tried to cause a train wreck with it before it even came out? It looks to me that the vast majority of reviews since the film actually opened have been very high ratings.I thought the film was outstanding- just like the resent reviews.Does anyone else think something fishy is going on with the reviews of this film? Why would some folks want to squash this film? Maybe some journalists out there can take a look at that?')

    user = User.find(6)
    reply = Reply.new(:content => "That is fine")
    reply.user = user
    reply.post = Post.find(11)
    reply.save

    user = User.find(6)
    reply = Reply.new(:content => "I agree with you")
    reply.user = user
    reply.post = Post.find(10)
    reply.save

    user = User.find(6)
    reply = Reply.new(:content => "I think so")
    reply.user = user
    reply.post = Post.find(9)
    reply.save

    user = User.find(1)
    order = Order.new(:movie_title => "The Girl with the Dragon Tattoo")
    order.user = user
    order.movie = Movie.find(6)
    order.save

    user = User.find(1)
    order = Order.new(:movie_title => "Farewell, My Concubine")
    order.user = user
    order.movie = Movie.find(14)
    order.save

    user = User.find(6)
    order = Order.new(:movie_title => "La vita è bella")
    order.user = user
    order.movie = Movie.find(15)
    order.save












