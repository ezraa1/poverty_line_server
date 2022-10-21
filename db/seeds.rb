# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts ("...seeding data")
# Eastern Africa
Region.create!(sub_region: "Eastern Africa", sub_region_code: "EA01", country_name: "BURUNDI", country_code: 257, city: "", city_reporting_level: "Urban" )
Region.create!(sub_region: "Eastern Africa", sub_region_code: "EA01", country_name: "ETHIOPIA", country_code: 251, city: "Addis Ababa", city_reporting_level: "Urban" )
Region.create!(sub_region: "Eastern Africa", sub_region_code: "EA01", country_name: "TANZANIA", country_code: 255, city: "Dodoma", city_reporting_level: "Urban" )
Region.create!(sub_region: "Eastern Africa", sub_region_code: "EA01", country_name: "COMOROS", country_code: 269, city: "Moroni", city_reporting_level: "Rural" )
Region.create!(sub_region: "Eastern Africa", sub_region_code: "EA01", country_name: "SOUTH SUDAN", country_code: 211, city: "Juba", city_reporting_level: "Urban" )
Region.create!(sub_region: "Eastern Africa", sub_region_code: "EA01", country_name: "SUDAN", country_code: 255, city: "Khartoum", city_reporting_level: "Rural" )
Region.create!(sub_region: "Eastern Africa", sub_region_code: "EA01", country_name: "UGANDA", country_code: 256, city: "Kampala", city_reporting_level: "Rural" )
Region.create!(sub_region: "Eastern Africa", sub_region_code: "EA01", country_name: "ZIMBABWE", country_code:263, city: "Harare", city_reporting_level: "Urban" )
Region.create!(sub_region: "Eastern Africa", sub_region_code: "EA01", country_name: "KENYA", country_code: 254, city: "Nairobi", city_reporting_level: "Rural" )
Region.create!(sub_region: "Eastern Africa", sub_region_code: "EA01", country_name: "SOMALIA", country_code: 252, city: "Mogadishu", city_reporting_level: "Rural" )
Region.create!(sub_region: "Eastern Africa", sub_region_code: "EA01", country_name: "RWANDA", country_code: 250, city: "Kigali", city_reporting_level: "Urban" )
Region.create!(sub_region: "Eastern Africa", sub_region_code: "EA01", country_name: "SEYCHELLES", country_code: 248, city: "Victoria", city_reporting_level: "Urban" )
Region.create!(sub_region: "Eastern Africa", sub_region_code: "EA01", country_name: "ERITREA", country_code: 291, city: "Asmara ", city_reporting_level: "Urban" )
Region.create!(sub_region: "Eastern Africa", sub_region_code: "EA01", country_name: "ZAMBIA", country_code: 260, city: "Lusaka", city_reporting_level: "Rural" )
Region.create!(sub_region: "Eastern Africa", sub_region_code: "EA01", country_name: "MAURITIUS", country_code: 230, city: "Port Louis", city_reporting_level: "Urban" )
Region.create!(sub_region: "Eastern Africa", sub_region_code: "EA01", country_name: "MOZAMBIQUE", country_code: 258, city: "Maputo", city_reporting_level: "Urban" )
Region.create!(sub_region: "Eastern Africa", sub_region_code: "EA01", country_name: " MALAWI", country_code: 265, city: "Lilongwe", city_reporting_level: "Rural" )
Region.create!(sub_region: "Eastern Africa", sub_region_code: "EA01", country_name: "MADAGASCAR", country_code: 261, city: "Antananarivo", city_reporting_level: "Urban" )
# Middle Africa
Region.create!(sub_region: "Middle Africa", sub_region_code: "MD01", country_name: "CHAD", country_code: 235, city: "N'Djamena ", city_reporting_level: "Rural" )
Region.create!(sub_region: "Middle Africa", sub_region_code: "MD01", country_name: "DEMOCRATIC REPUBLIC OF CONGO", country_code: 243, city: "Kinshasa", city_reporting_level: "Urban" )
Region.create!(sub_region: "Middle Africa", sub_region_code: "MD01", country_name: "CONGO", country_code: 242, city: "Kinshasa", city_reporting_level: "Rural" )
Region.create!(sub_region: "Middle Africa", sub_region_code: "MD01", country_name: "CAMEROON", country_code: 237, city: "Yaoundé", city_reporting_level: "Urban" )
Region.create!(sub_region: "Middle Africa", sub_region_code: "MD01", country_name: "ANGOLA", country_code: 244, city: "Luanda", city_reporting_level: "Rural" )
Region.create!(sub_region: "Middle Africa", sub_region_code: "MD01", country_name: "CENTRAL AFRICAN REPUBLIC", country_code: 236, city: "Bangui", city_reporting_level: "Urban" )
Region.create!(sub_region: "Middle Africa", sub_region_code: "MD01", country_name: "EQUATORIAL GUINEA", country_code: 240, city: "Malabo", city_reporting_level: "Urban" )
Region.create!(sub_region: "Middle Africa", sub_region_code: "MD01", country_name: "SAO TOME AND PRINCIPE", country_code: 239, city: "Sao Tome", city_reporting_level: "Urban" )
Region.create!(sub_region: "Middle Africa", sub_region_code: "MD01", country_name: "GABON", country_code: 241, city: "Libreville", city_reporting_level: "Rural" )
# South Africa
Region.create!(sub_region: "South Africa", sub_region_code: "SA01", country_name: "BOTSWANA", country_code: 267, city: "Gaborone", city_reporting_level: "Urban" )
Region.create!(sub_region: "South Africa", sub_region_code: "SA01", country_name: "NAMIBIA" , country_code: 264, city: "Windhoek", city_reporting_level: "Urban" )
Region.create!(sub_region: "South Africa", sub_region_code: "SA01", country_name: "LESOTHO" , country_code: 266, city: "Maseru", city_reporting_level: "Urban" )
Region.create!(sub_region: "South Africa", sub_region_code: "SA01", country_name: "SOUTH AFRICA", country_code: 27, city: "Cape Town", city_reporting_level: "Urban" )
# Western Africa
Region.create!(sub_region: "Western Africa", sub_region_code: "WA01", country_name: "GUINEA", country_code: 224, city: "Conakry", city_reporting_level: "Urban" )
Region.create!(sub_region: "Western Africa", sub_region_code: "WA01", country_name: "LIBERIA", country_code: 231, city: "Monrovia", city_reporting_level: "Rural" )
Region.create!(sub_region: "Western Africa", sub_region_code: "WA01", country_name: "GHANA", country_code: 233, city: "Accra", city_reporting_level: "Rural" )
Region.create!(sub_region: "Western Africa", sub_region_code: "WA01", country_name: "SIERRA LEONE ", country_code: 232, city: "Freetown", city_reporting_level: "Urban" )
Region.create!(sub_region: "Western Africa", sub_region_code: "WA01", country_name: " TOGO ", country_code: 228, city: "Lomé", city_reporting_level: "Urban" )
Region.create!(sub_region: "Western Africa", sub_region_code: "WA01", country_name: "SENEGAL", country_code: 221, city: "Dakar", city_reporting_level: "Rural" )
Region.create!(sub_region: "Western Africa", sub_region_code: "WA01", country_name: "NIGER", country_code: 227, city: "Niamey", city_reporting_level: "Urban" )
Region.create!(sub_region: "Western Africa", sub_region_code: "WA01", country_name: "NIGERIA", country_code: 234, city: "Abuja", city_reporting_level: "Urban" )
Region.create!(sub_region: "Western Africa", sub_region_code: "WA01", country_name: "MALI", country_code: 223, city: "Bamako", city_reporting_level: "Urban" )
Region.create!(sub_region: "Western Africa", sub_region_code: "WA01", country_name: "MAURITANIA", country_code: 222, city: "Nouakchott", city_reporting_level: "Rural" )
Region.create!(sub_region: "Western Africa", sub_region_code: "WA01", country_name: "GAMBIA", country_code: 220, city: "Banjul", city_reporting_level: "Rural" )
Region.create!(sub_region: "Western Africa", sub_region_code: "WA01", country_name: "CAPE VERDE", country_code: 238, city: "Praia", city_reporting_level: "Urban" )
Region.create!(sub_region: "Western Africa", sub_region_code: "WA01", country_name: "BENIN", country_code: 229, city: "Porto-Novo", city_reporting_level: "Rural" )
Region.create!(sub_region: "Western Africa", sub_region_code: "WA01", country_name: "GUINEA-BISSAU", country_code: 245, city: "Bissau", city_reporting_level: "Urban" )
Region.create!(sub_region: "Western Africa", sub_region_code: "WA01", country_name: "BURKINA FASO", country_code: 226, city: "Ouagadougou", city_reporting_level: "Rural" )
Region.create!(sub_region: "Western Africa", sub_region_code: "WA01", country_name: "REP.COTE D'IVOIRE", country_code:225, city: "Yamoussoukro", city_reporting_level: "Rural" )
     


 User.create! ({
    full_name: "Luke Gamu",
    user_type: 1,
    email: "luke@star.com",
    gender: "Male",
    age: "22",
    city: "Nakuru",
    country_name: "Kenya",
   region_id: 3,
    marital_status: "Single",
    employment_status: "Unemployed",
    monthly_income: 5000,
    access_to_safe_water: "No",
    access_to_electricity: "Yes",
    medical_insurance: "No",
    education_level: "O-Level",
    religion: "Christian",
    is_disabled: true,
    password: "Password"
 })



 User.create! ({
    full_name: "Matthew Nana",
    user_type: 1,
    email: "nana@gmail.com",
    gender: "Male",
    age: 35,
    city: "Abuja",
    country_name: "Nigeria",
    region_id: 2,
    marital_status: "Married",
    employment_status: "Unemployed",
    monthly_income: 2000,
    access_to_safe_water: "No",
    access_to_electricity: "Yes",
    medical_insurance: "No",
    education_level: "High School",
    religion: "Muslim",
    is_disabled: false,
    password: "Password"
 })

 
Donation.create(
    user_id: "2",
    donation_name: "Aid Orphans",
    description: "This donation goes to orphans to help them raise funds to continue with their education.",
    donation_amount: "USD 6000",
    region_id: "1",
    country_code: 221

)

Donation.create(
    user_id: "2",
    donation_name: "Feed A Family",
    description: "This donation will provide the less fortunate families with food.",
    donation_amount: "USD 3500",
    region_id: "2",
    country_code: 260
)

Donation.create(
    user_id: "1",
    donation_name: "AIDS Fund",
    description: "Money donated will be used to provide ARVs to people living with AIDS",
    donation_amount: "USD 10000",
    region_id: "7",
    country_code: 255
)
puts "Done seeding"


