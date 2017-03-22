json.partial! "api/guides/guide", guide: @guide
json.array! @guide.comments do 
  json.author do
    json.username @guide.comment.author.username
    json.photo_url @guide.comment.author.photo_url
  end
end
