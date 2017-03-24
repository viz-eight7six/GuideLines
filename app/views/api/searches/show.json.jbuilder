@guides.each do |guide|
  json.set! guide.id do
    json.partial! '../guides/guide', guide: guide
  end
end
