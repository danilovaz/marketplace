json.array!(@templates) do |template|
  json.extract! template, :id, :name, :description, :image, :value, :category_id
  json.url template_url(template, format: :json)
end
