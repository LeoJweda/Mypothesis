namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    50.times do
      User.all(:limit => 6).each do |user|
        user.hypotheses.create!(:title => Faker::Lorem.sentence(5), :content => Faker::Lorem.sentence(5),
          :null_hypothesis => Faker::Lorem.sentence(5), :subject => "Psychology")
      end
    end
  end
end