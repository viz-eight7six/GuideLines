@guides.each do |guide|
  json.set! guide.id do
    json.partial! 'guide', guide: guide
  end
end
