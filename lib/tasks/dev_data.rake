# encoding: utf-8

namespace :dev_data do
  desc "Fill database with sample data"
  task create: :environment do
    
    Rake::Task['db:reset'].invoke

      (0..1110).map do |i|
        Personnel.create!(
          n_decision: "CFER45-#{i}", 
          n_mle: "UYGJ-567-#{i}", 
          nom: "NOM-#{i}", 
          prenom: "PRENOM-#{i}", 
          address: "address Personnel-#{i}", 
          email: "Personnel-#{i}@test.com" )
      end
   puts "===> Sample date have been set in DB  Personnel!"
  end
  
end