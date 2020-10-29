$userId_success = rand(1..10)
$userId_failure = rand(11..20)
$phone_number = Faker::PhoneNumber.phone_number
$post_title = Faker::Lorem.sentence(word_count: 3)
$post_body = Faker::Lorem.sentence(word_count: 6)
