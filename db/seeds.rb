# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Article.create([{ title: 'About the app creator', body: '### Profile
* Name: **Vo Nguyen Minh An**
* Gender: *Male*
* Avatar: ![Picture](https://media.licdn.com/media/p/7/005/036/301/367ad78.jpg "My Avatar")
	'},
	{title: 'My second Markdown post', body: '### hello **World**, how are *you* doing?
	* I\'m doing great!
	* Coding is fun
	* Coderschool is great
	* Here\'s the link to more [Documentation on Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) * ![Animal](https://placeimg.com/640/480/animals)'}])

a = Article.first
a.comments.create!([{content: 'This is my first comment'}, {content: 'Another comment'}])