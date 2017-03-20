export const fetchSteps = () => (
  $.ajax({
    method: "GET",
    url: "api/guides"
  })
);
export const fetchStep = (id) => (
  $.ajax({
    method: "GET",
    url: `api/steps/#{id}`
  })
);
export const createStep = (step) => (
  $.ajax({
    method: "POST",
    url: "api/steps",
    data: {step}
  })
);
export const deleteStep = () => (
  $.ajax({
    method: "DELETE",
    url: "api/steps"
  })
);
