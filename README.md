#Thriftory
<a href="https://codeclimate.com/github/mmdotz/Thriftory"><img src="https://codeclimate.com/github/mmdotz/Thriftory/badges/gpa.svg" /></a>

Welcome to Thriftory, the thrifter's inventory app.
Have the thrill of the find and peace of mind.

- A website for thrifters who need to track inventory, sales, vendors and upload
photos. Thriftory is the first app made with the hobby thrift reseller in mind.
- Users can create a new account to access the app, upload their own inventory and
start tracking inventory activity.
- Check out the live site at [Thriftory](https://thriftory.herokuapp.com).
Please use `jd@example.com` and `password` to use the demo tables.
- Please see the github [wiki](https://github.com/mmdotz/Thriftory/wiki) for this site for anticipated changes

![loginpage](/docs/frontpage.png?raw=true "Thriftory")

##Libraries, software and other tools used
- Ruby (2.2.1)
- Rails (4.2.4)
- Bootstrap for styling and javascript
- Web hosting by Heroku
- Image hosting by Amazon Web Services
- Refile for image upload
- Minitest for model testing
- Elasticsearch for full text search for items
- PostgreSQL Database
- Sass
- React for dynamic item search
- Bcrypt for password encryption
- CSV for exporting data
- Chartkick for graphing
- Geocoder for distance measurement

More information in the Gemfile

##Installation Steps
- Fork this Repo
- Clone this Repo
- Run `bundle install`
- Run `rake db:create`
- Create an account with Amazon Web Services/S3
- Setup Figaro with your AWS api keys.  ! Remember not to push keys to Github.
- `rails s` to start server

##More information
- original UMLs ![UMLs](/docs/UMLorig.png)
- current [Trello scrum board](https://trello.com/b/BvRjL9bK/thriftory)
- wireframes
	- [login](/docs/login.png)
	- [stats](/docs/stats.png)
   - [items by category](/docs/items_by_category.png)
   - [homepage](/docs/home.png)
   - [category search](/docs/choose_category.png)
   - [add_new_item](/docs/add_inventory.png)

##Credits and Acknowledgements
- logo assistance [Corey Elliot Design](https://www.linkedin.com/in/coreyaelliott)
