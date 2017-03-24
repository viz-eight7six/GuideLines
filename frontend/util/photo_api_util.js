export const createPic = (photo) => (
  $.ajax({
    method: "POST",
    url: "api/photos",
    data: {photo}
  })
);

export const removePic = () => (
  $.ajax({
    method: "DELETE",
    url: "api/photos",
  })
);
