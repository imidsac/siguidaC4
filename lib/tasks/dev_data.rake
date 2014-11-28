# encoding: utf-8

namespace :dev_data do
  desc "Fill database with sample data"
  task create: :environment do
    
    Rake::Task['db:reset'].invoke
      Centre.create!(
          nom_centre: "CENTRE PRINCIPAL", 
          phone: "XX XX XX XX", 
          address: "A.C.I 2000 RUE DE LA CAN" 
          )
      Centre.create!(
          nom_centre: "CENTRE SECONDAIRE LAFIA 1", 
          phone: "XX XX XX XX", 
          address: "A.C.I 2000 RUE DE LA CAN" 
          )
      Centre.create!(
          nom_centre: "CENTRE SECONDAIRE LAFIA 2", 
          phone: "XX XX XX XX", 
          address: "A.C.I 2000 RUE DE LA CAN" 
          )
      Centre.create!(
          nom_centre: "CENTRE SECONDAIRE HAMDALAYE 1", 
          phone: "XX XX XX XX", 
          address: "A.C.I 2000 RUE DE LA CAN" 
          )
      Centre.create!(
          nom_centre: "CENTRE SECONDAIRE HAMDALAYE 2", 
          phone: "XX XX XX XX", 
          address: "A.C.I 2000 RUE DE LA CAN" 
          )
      Centre.create!(
          nom_centre: "CENTRE SECONDAIRE DJICORONI 1", 
          phone: "XX XX XX XX", 
          address: "A.C.I 2000 RUE DE LA CAN" 
          )
      Centre.create!(
          nom_centre: "CENTRE SECONDAIRE DJICORONI 2", 
          phone: "XX XX XX XX", 
          address: "A.C.I 2000 RUE DE LA CAN" 
          )
      Centre.create!(
          nom_centre: "CENTRE SECONDAIRE SEBÉNIKORO 1", 
          phone: "XX XX XX XX", 
          address: "A.C.I 2000 RUE DE LA CAN" 
          )
      Centre.create!(
          nom_centre: "CENTRE SECONDAIRE SEBÉNIKORO 2", 
          phone: "XX XX XX XX", 
          address: "A.C.I 2000 RUE DE LA CAN" 
          )
      Centre.create!(
          nom_centre: "CENTRE SECONDAIRE BOUGOUDANI", 
          phone: "XX XX XX XX", 
          address: "A.C.I 2000 RUE DE LA CAN" 
          )
      Centre.create!(
          nom_centre: "CENTRE SECONDAIRE TALIKO", 
          phone: "XX XX XX XX", 
          address: "A.C.I 2000 RUE DE LA CAN" 
          )
      Centre.create!(
          nom_centre: "CENTRE SECONDAIRE LASSA", 
          phone: "XX XX XX XX", 
          address: "A.C.I 2000 RUE DE LA CAN" 
          )
      Centre.create!(
          nom_centre: "CENTRE SECONDAIRE KALABANBOUGOU", 
          phone: "XX XX XX XX", 
          address: "A.C.I 2000 RUE DE LA CAN" 
          )

      puts "===> Sample date have been set in DB  Centres!"

      Service.create!(
          nom_service: "Assainissement" 
          )
      Service.create!(
          nom_service: "BUPE" 
          )
      Service.create!(
          nom_service: "BR HYG" 
          )
      Service.create!(
          nom_service: "SECRÉTARIAT GÉNÉRAL" 
          )
      Service.create!(
          nom_service: "SECRÉTARIAT PARTICULIER" 
          )
      Service.create!(
          nom_service: "CSEC BOUGOUDANI" 
          )
      Service.create!(
          nom_service: "CSEC SEBÉNIKORO" 
          )
      Service.create!(
          nom_service: "CSEC HAMDALAYE" 
          )

      puts "===> Sample date have been set in DB  Service!"

      (0..1110).map do |i|
        Personnel.create!(
          n_decision: "CFER45-#{i}", 
          n_mle: "UYGJ-567-#{i}", 
          nom: "NOM-#{i}", 
          prenom: "PRENOM-#{i}", 
          address: "address Personnel-#{i}", 
          email: "Personnel-#{i}@test.com" 
          )
      end
   puts "===> Sample date have been set in DB  Personnel!"
  end
  
end