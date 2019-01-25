FactoryBot.define do
  factory :tv do |t|
    t.title { "PWTGH" }
    t.language { "ENGLISH" }
    t.episode   { 10 }
    t.duration  { 4 }
    t.premire_date { '20-12-2013' }
  end
end
