# Currently it doesn't work: it gives the record with 10 (belonging to 'someone') points when it should give the record with 50 points (belonging to 'someone else').

records = [
  {name: 'someone', points: 10, notes: ["this is a note", "this is too"]},
  {name: 'someone else', points: 50, notes: ['wow']},
  {name: 'another person', points: 30, notes: []}
]

def find_record_with_most_points(records)
   return records.max_by { |hash| hash[:points] }

end

puts find_record_with_most_points(records)


#in above example, method takes array as argument,
#referring to each hash in the array as |hash|
#max_by then compares value of :points from each hash and returns the hash with the highest :points value
