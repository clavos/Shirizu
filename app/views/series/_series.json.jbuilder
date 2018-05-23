json.extract! series, :id, :name, :synopsis, :startDate, :endDate, :nationality, :cover, :created_at, :updated_at
json.url series_url(series, format: :json)
