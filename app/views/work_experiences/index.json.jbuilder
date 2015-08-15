json.array!(@work_experiences) do |work_experience|
  json.extract! work_experience, :id, :name, :start_date, :end_date, :job_title, :description
  json.url work_experience_url(work_experience, format: :json)
end
