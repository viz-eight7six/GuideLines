export const create = (photo) => (
  $.ajax({
    method: "POST",
    url: "api/photos",
    data: {photo}
  })
);

export const remove = () => (
  $.ajax({
    method: "DELETE",
    url: "api/photos",
  })
);
