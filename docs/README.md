#HowDoI

[Heroku link][heroku]

[Trello link][trello]

[heroku]: http://www.herokuapp.com
[trello]: https://trello.com/b/gW4znUwg/instructables-full-stack-project

##Minimum Viable Product

HowDoI is a full-stack web application based on Instructables, which hosts guides to educate users on how to do things, it is built on a React/Redux architect and runs on a Postgresql database that is served to the frontend by Ruby on Rails. By the end of Week 9 this app should have the below functions with minimal bugs and some CSS styling

- [ ]Hosting on Heroku
- [ ]New account creation, login, and guest/demo login
- [ ]Guides
- [ ]Commenting
- [ ]Guides have Photos/Videos
- [ ]Users can search for keywords
- [ ]Production README

## Design Docs
* [View Wireframes][wireframes]
* [React Components][components]
* [API endpoints][api-endpoints]
* [DB schema][schema]
* [Sample State][sample-state]

[wireframes]: ./wireframes
[components]: ./component-hierarchy.md
[sample-state]: ./sample-state.md
[api-endpoints]: ./api-endpoints.md
[schema]: ./schema.md


##Implementation Timeline

**Phase 1: Auth (2 days)**

Objective: Allow users to signup and sign in

**Phase 2: Guides(3 days)**

Objective: Allow users to create/delete guides using the API

**Phase 3: Comments(1 day)**

Objective: Users can write/delete comments on guides. Owner of guide can delete any comment

**Phase 4: Photo/Video(1 day)**

Objective: Users can add photos and videos to their guides

**Phase 5: Searching(1 day)**

Objective: users can search guides based on keywords using the search bar

**Phase 6: Clean up(2 days)**

Objective: Using CSS make the product look as good as the copied site Instructables

**Phase 7: Bonus(any remaining time)**

Objective:
1) Create Categories for guides
2) Make featured channels
