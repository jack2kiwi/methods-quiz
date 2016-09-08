
# TODO - write has_teen?
def has_teen?(a, b, c)
  if a == 13 || a == 14 ||  a == 15 ||  a == 16 ||  a == 17 ||  a == 18 ||  a == 19
    true
  elsif  b == 13 || b == 14 ||  b == 15 ||  b == 16 ||  b == 17 ||  b == 18 ||  b == 19
    true
  elsif  c == 13 || c == 14 ||  c == 15 ||  c == 16 ||  c == 17 ||  c == 18 ||  c == 19
    true
  else
    false
  end
end

# TODO - write not_string
def not_string(str)
  if str[0..2] == "not"
    str
  else
    "not" + str
  end
end
# TODO - write icy_hot?

# TODO - write closer_to

# TODO - write two_as_one?

# TODO - write pig_latinify
