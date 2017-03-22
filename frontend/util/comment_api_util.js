export const fetchComments = () => (
  $.ajax({
    method: "GET",
    url: "api/comments"
  })
);
export const fetchComment = (id) => (
  $.ajax({
    method: "GET",
    url: `api/comments/#{id}`
  })
);
export const createComment = (comment) => (
  $.ajax({
    method: "POST",
    url: "api/comments",
    data: {comment}
  })
);
export const deleteComment = () => (
  $.ajax({
    method: "DELETE",
    url: "api/comments"
  })
);
