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
    }
    comments: {
      1: {
        author_id: 2,
        body: "Thanks, I seriously never knew how to"
      }
    }
  },
  steps: {
    1: {
      id: 1
      name: "Step 1"
      body: "Buy cup noodle"
      next_step_id: 2
    }
    2: {
      id: 2
      name: "Step 2"
      body: "Boil Water"
      prev_step_id: 1
      next_step_id: 3
    }
    3: {
      id: 3
      name: "Step 3"
      body: "Use boiled water to cook"
      prev_step_id: 2
    }
  }
}
```
