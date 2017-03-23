export const fetchGuides = () => (
  $.ajax({
    method: "GET",
    url: "api/guides"
  })
);
export const fetchGuide = (id) => (
  $.ajax({
    method: "GET",
    url: `api/guides/#{id}`
  })
);
export const createGuide = (guide) => (
  $.ajax({
    method: "POST",
    url: "api/guides",
    data: {guide}
  })
);
export const deleteGuide = () => (
  $.ajax({
    method: "DELETE",
    url: "api/guide"
  })
);

export const createComment = (comment) => (
  $.ajax({
    method: "POST",
    url: "api/comments",
    data: {comment}
  })
);
