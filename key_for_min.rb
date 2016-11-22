# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  # Returns nil if the hash is nil
  if name_hash.empty?
    nil
  else
  smallest_key = ""
  smallest_value = 0

  name_hash.each do |key, value|
    # during first run, set smallest_key equal to first value
    if smallest_key == ""
      smallest_value = value.to_f
      smallest_key = key
    end
    if smallest_value.to_f > value.to_f
      smallest_key = key
      smallest_value = value
    end
  end
smallest_key
end
end
