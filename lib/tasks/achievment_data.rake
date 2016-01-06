require 'open-uri'
require 'json'

namespace :achievment_data_for do
   desc 'retrieve achievment data for Codeschool.com'
   task code_school: :environment do
      cs_url = "https://www.codeschool.com/users/1733393.json"
      open_url = open(cs_url).read
      json_data = JSON.parse(open_url)
      @cs_badges = json_data['courses']['completed']
      @cs_info = json_data['user']
   end

   desc 'retrieve achievement data for teamtreehouse.com'
   task :teamtreehouse :environment do
      tth_url = "https://teamtreehouse.com/traviseubanks.json"
      open_url = open(tth_url).read
      json_data = JSON.parse(open_url)
      @tth_badges = json_data['badges']
      @tth_points = json_data['points']
      @tth_courses = @tth_badges[5]


   end

   task :all => [:teamtreehouse, :code_school]
end
