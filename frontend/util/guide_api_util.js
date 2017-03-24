export const fetchGuides = (params) => (
  $.ajax({
    method: 'GET',
    url: 'api/guides',
    data: {query: params}})
);

export const fetchGuide = (id) => (
  $.ajax({
    method: "GET",
    url: `api/guides/${id}`
  })
);
export const createGuide = (guide) => (
  $.ajax({
    method: "POST",
    url: "api/guides",
    data: {guide}
  })
);
export const patchGuide = (guide) => (
  $.ajax({
    method: "PATCH",
    url: `api/guide/${guide.id}`,
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
export const deleteComment = (id) => {
  return (
    $.ajax({
      method: "DELETE",
      url: `api/comments/${id}`
    })
  );
}
;
