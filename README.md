# Guidelines

[Guidelines live][heroku]

[heroku]: http://www.how-do-i-.herokuapp.com
[Instructables]: http://www.Instructables.com

Guidelines is a full-stack web application inspired by [Instructables]. This web-app uses a React-Redux framework that connects to a PostgreSQL DB with Ruby on Rails.

## Features & Implementation

### Guide Creation

  Guides are stored on a table, each guide is owned by a user and has many steps. A guide itself has its own `id`, `title`,  `body`, `author_id`, and `photo_url`.

  Guides are created on a single form that allows the creator to add steps. This nests the step form into our guide form. Upon submit, the guide is created on the backend with all the steps associated with it.  And the user is redirected to their new guide show page that they just created.

  Guides are rendered as an index and a show page. The index only contains the title and photo and author's username.

  ![image of guide create](docs/wireframes/guide form.jpg)


### Comments

  Users are allowed to make comments on the guides. Comments show from the most recent to latest one going down. Users are also allowed to delete comments.

  Comments are created on the guide show page. Comments are stored on a table and is liked to a user and a guide by association.


### Photos

  Users are allowed to upload a photo for each guide and step along with the guide. In the guide creation page, photos can be uploaded using a drag and drop modal that appears when the user presses the Upload photo button. The Photos are hosted on a cloudinary server, which returns a url for the photo to be stored on the table.

### Searching

  Users are allowed to search for guides by title. A search bar on the nav allows users to input any keyword that is checked to be similar to any word in a title. The results are returned on the bottom of the home page on submit.


## Future Implementations

### Editing Guides

  Since the guide form is nested with steps, getting the guide to update with the right ab=mount of steps is a bit tricky, I plan to tackle this problem by implementing a check for the steps in order to ensure no duplicate steps are make

### Featured Articles

  Will allow certain guides to be featured where they will the showcased on the index show page.

### Categories

  Will set guides to be in categories so that they can be filtered by searches.

### Video Embeding

  Will not only allow photo uploads, but also embedding videos into the steps

### Drag and Drop Photos

  Will allow users to access their photo collection and using a photo nav bar, users can drag their photos into their new guides.
