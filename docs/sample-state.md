```js
{
  currentUser: {
    id: 1,
    username: "Vinson"
  },
  forms: {
    signUp: {errors: []},
    logIn: {errors: []},
    createGuide: {errors: []}
  },
  guides: {
    1: {
      title: "How to make cup noodle",
      body: "Hope you can do this",
      author_id: 1,
      guides_id: 1
      steps: {
        1: {
          id: 1
          name: "Step 1"
          body: "Buy cup noodle"
        }
        2: {
          id: 2
          name: "Step 2"
          body: "Boil Water"
        }
        3: {
          id: 3
          name: "Step 3"
          body: "Use boiled water to cook"
        }
      }
    }
  },
  comments: {
    1: {
      author_id: 2,
      body: "Thanks, I seriously never knew how to"
    }
  }
}
```
