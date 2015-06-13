json.array!(@order_templates) do |order_template|
  json.extract! order_template, :id, :template_id, :order_id
  json.url order_template_url(order_template, format: :json)
end
