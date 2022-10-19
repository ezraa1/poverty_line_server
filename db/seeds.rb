# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Donation.create(
    user_id: "2",
    donation_name: "Aid Orphans",
    description: "This donation goes to orphans to help them raise funds to continue with their education.",
    donation_amount: "USD 6000",
    region_id: "1",
    country_code: "213"

)

Donation.create(
    user_id: "3",
    donation_name: "Feed A Family",
    description: "This donation will provide the less fortunate families with food.",
    donation_amount: "USD 3500",
    region_id: "2",
    country_code: "377"
)

Donation.create(
    user_id: "1",
    donation_name: "AIDS Fund",
    description: "Money donated will be used to provide ARVs to people living with AIDS",
    donation_amount: "USD 10000",
    region_id: "3",
    country_code: "886"
)

