#FRELLO, my fake Trello

Welcome to Frello, my version of the fantastic Trello Board.

- A site for people who need to organize activities
- Users can create a new account to access the app, create Boards (for events or activities),
create cards, checklists, add comments, invite others

- Please see the github [wiki](https://github.com/mmdotz/Frello/wiki) for this site for anticipated changes

##Libraries, software and other tools used
- Ruby (2.2.1)
- Rails (4.2.5.2)
- Bootstrap for styling and javascript - todo
- Web hosting by Heroku - todo
- Image hosting by Amazon Web Services - todo, or gravitar
- Paperclip for image upload - todo
- Minitest for model testing - todo
- PostgreSQL Database
- Sass
- Devise for multiple user authorization and authentication

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
- UMLs and wireframes will go here

##Credits and Acknowledgements
