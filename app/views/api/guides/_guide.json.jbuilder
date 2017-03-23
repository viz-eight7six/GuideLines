json.extract! guide, :id, :title, :body, :steps, :owner, :photo_url, :comments

json.comments guide.comments do |comment|
  json.set! comment.id
  json.body comment.body
  json.created_at comment.created_at
  json.author do
    json.extract! comment.author, :username, :photo_url
  end
end
