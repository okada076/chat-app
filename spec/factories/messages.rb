FactoryBot.define do
  factory :message do
    after(:build) do |message|
      message.image.attach(io: File.open(image_path), filename: 'test_image.png')
    end
  end
end