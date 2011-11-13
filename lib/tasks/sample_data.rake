namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    50.times do
      User.all(:limit => 6).each do |user|
        user.hypotheses.create!(:title => Faker::Lorem.sentence(5), :content => Faker::Lorem.sentence(5),
          :null_hypothesis => Faker::Lorem.sentence(5), :subject => "Psychology", :references => Faker::Lorem.sentence(5))
      end
    end
    
    50.times do
      User.all(:limit => 6).each do |user|
        user.evidences.create!(:title => Faker::Lorem.sentence(5), :content => Faker::Lorem.sentence(5),
          :supporting => [true,false].shuffle.shift, :references => Faker::Lorem.sentence(5),
          :hypothesis => Hypothesis.all.shuffle.shift)
      end
    end
  end
end