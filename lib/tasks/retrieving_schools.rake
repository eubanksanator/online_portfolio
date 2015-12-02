require 'open-uri'
require 'json'

namespace :retrieving_schools do
  desc "TODO"
  task code_school: :environment do
    cs_url = "https://www.codeschool.com/users/1733393.json"
    open_url = open(cs_url).read
    json_data = JSON.parse(open_url)
    @cs_badges = json_data['courses']['completed']
    @cs_info = json_data['user']
  end

  desc "TODO"
  task tth_school: :environment do
    tth_url = "https://teamtreehouse.com/traviseubanks.json"
    open_url = open(tth_url).read
    json_data = JSON.parse(open_url)
    @tth_badges = json_data['badges']
    @tth_points = json_data['points']
    @tth_courses = @tth_badges[5]
  end

end
