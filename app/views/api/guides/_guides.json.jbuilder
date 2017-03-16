json.array!(@guides) do |guide|
  json.title = guide.title
  json.id = guide.id
end
