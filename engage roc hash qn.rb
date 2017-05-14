require 'json'

THING =[
         {
           attribute: "Department",
           attribute_details: [
             {
               attribute_value: "HR",
               scores: [
                 {
                   score: 3,
                   driver: "Growth",
                   answer_count: 20
                 },
                 {
                   score: 4,
                   driver: "Environment",
                   answer_count: 15
                 }
               ]
             }
           ]
         },
          {
           attribute: "Gender",
           attribute_details: [
             {
               attribute_value: "Male",
               scores: [
                 {
                   score: 3,
                   driver: "Growth",
                   answer_count: 10
                 },
                 {
                   score: 4,
                   driver: "Environment",
                   answer_count: 15
                 }
               ]
             },
             {
               attribute_value: "Female",
               scores: [
                 {
                   score: 3,
                   driver: "Growth",
                   answer_count: 5
                 },
                 {
                   score: 4,
                   driver: "Environment",
                   answer_count: 20
                 }
               ]
             }
           ]
         }
        ]

def score_by_attribute(attribute, driver)
  answer = {}

  temp = THING.find {|x| x[:attribute] == attribute}

  answer[:driver] = driver
  answer[:attribute_score] = []

  temp[:attribute_details].each do |item|
    k = item[:scores].select {|x| x[:driver] == driver }

    answer[:attribute_score] << {
      attribute_detail_value: item[:attribute_value],
      score: k[0][:score],
      answer_count: k[0][:answer_count]
    }
  end

  puts JSON.pretty_generate(answer)

  # =============== method 1 ===================

  # answer = {}
  # attribute_score = []
  #
  # temp = THING.select {|item| item[:attribute] == attribute}[0][:attribute_details]
  #
  # answer[:driver] = driver
  #
  # temp.each do |item|
  #   k = item[:scores].select {|x| x[:driver] == driver}
  #
  #   attribute_score << {
  #     attribute_detail_value: item[:attribute_value],
  #     score: k[0][:score],
  #     answer_count: k[0][:answer_count]
  #   }
  # end
  #
  # answer[:attribute_score] = attribute_score
  #
  # print answer
  # =============== method 1 ===================
end

score_by_attribute("Gender", "Growth")

  # {
  #   driver: "Growth",
  #   attribute_score: [
  #     {
  #       attribute_detail_value: "Male",
  #       score: 3,
  #       answer_count: 10
  #     },
  #     {
  #       attribute_detail_value: "Female",
  #       score: 3,
  #       answer_count: 5
  #     }
  #   ]
  # }

# score_by_attribute("Department", "Growth")

# {
#   driver: "Growth",
#   attribute_score: [
#     {
#       attribute_detail_value: "HR",
#       score: 3,
#       answer_count: 20
#     }
#   ]
# }
