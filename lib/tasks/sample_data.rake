namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    50.times do
      User.all(:limit => 6).each do |user|
        user.hypotheses.create!(:title => Faker::Lorem.sentence(5), :content => Faker::Lorem.sentence(5),
          :null_hypothesis => Faker::Lorem.sentence(5), :subject => "Psychology")
      end
    end
    
    50.times do
      User.all(:limit => 6).each do |user|
        user.evidences.create!(:title => Faker::Lorem.sentence(5), :content => Faker::Lorem.sentence(5),
          :supporting => [true,false].shuffle.shift, :hypothesis => Hypothesis.all.shuffle.shift)
      end
    end
  end
end