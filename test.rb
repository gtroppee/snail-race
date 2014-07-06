log = [
  {time: 201201, x: 2},
  {time: 201201, y: 7},
  {time: 201201, z: 2},
  {time: 201202, a: 3},
  {time: 201202, b: 4},
  {time: 201202, c: 0}
]

# [
#   {time: 201201, x: 2, y: 7, z: 2},
#   {time: 201202, a: 3, b: 4, c: 0},
# ]

def collapse_by(collection_of_hashes, key)
  collection_of_hashes.group_by {|hash| hash[key] }
                      .map {|key, val| val.reduce(&:merge) }
end

log = collapse_by(log, :time)

puts "result is #{log}"