export const searchGuides = (searchTerm) => (
  $.ajax({
    method: 'GET',
  url:`api/searches/${searchTerm}`
  })
);
