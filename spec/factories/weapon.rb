FactoryBot.define do
  factory :weapon do
    description {FFaker::Lorem.word}
    level {FFaker::Random.rand(1..99)}
    name  {%i[knife mandragora peaceMaker excalibur].sample}
  end
end
