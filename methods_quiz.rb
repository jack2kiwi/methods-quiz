
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
def icy_hot?(a, b)
  if (a < 0 && b > 100) || (b < 0 && a > 100)
    true
  else
    false
  end
end

# TODO - write closer_to
def closer_to(target, a, b)
  howCloseA = (a - target).abs
  howCloseB = (b - target).abs
  if howCloseA == howCloseB
    0
  elsif howCloseA < howCloseB
    a
  else
    b
  end
end

# TODO - write two_as_one?
def two_as_one?(a, b, c)
  ab = a + b
  ac = a + c
  bc = b + c
  if ab == c || ac == b || bc == a
    true
  else
    false
  end
end

# TODO - write pig_latinify



def tutnese(string)
  str = string.downcase
  l = str.length
  n = 0
  while n <= l
    if str[n] == str[(n + 1)]
      if str[n] == "a" || str[n] == "e" || str[n] == "i" || str[n] == "o" || str[n] == "u"
        (str[n]).replace ("squat" + str[n])
        n = n + 6
      else
        (str[n]).replace "squa"
        n = n + 4
      end
    elsif str[n] == "a" || str[n] == "e" || str[n] == "i" || str[n] == "o" || str[n] == "u"
      n = n + 1
    elsif str[n] == "b"
      (str[n]).replace "bub"
      n = n + 3
    elsif str[n] == "c"
      (str[n]).replace "cash"
      n = n + 4
    elsif str[n] == "d"
      (str[n]).replace "dud"
      n = n + 3
    elsif str[n] == "f"
      (str[n]).replace "fuf"
      n = n + 3
    elsif str[n] == "g"
      (str[n]).replace "gug"
      n = n + 3
    elsif str[n] == "h"
      (str[n]).replace "hash"
      n = n + 4
    elsif str[n] == "j"
      (str[n]).replace "jay"
      n = n + 3
    elsif str[n] == "k"
      (str[n]).replace "kuck"
      n = n + 4
    elsif str[n] == "l"
      (str[n]).replace "lul"
      n = n + 3
    elsif str[n] == "m"
      (str[n]).replace "mum"
      n = n + 3
    elsif str[n] == "n"
      (str[n]).replace "nun"
      n = n + 3
    elsif str[n] == "p"
      (str[n]).replace "pub"
      n = n + 3
    elsif str[n] == "q"
      (str[n]).replace "quack"
      n = n + 5
    elsif str[n] == "r"
      (str[n]).replace "rug"
      n = n + 3
    elsif str[n] == "s"
      (str[n]).replace "sus"
      n = n + 3
    elsif str[n] == "t"
      (str[n]).replace "tut"
      n = n + 3
    elsif str[n] == "v"
      (str[n]).replace "vuv"
      n = n + 3
    elsif str[n] == "w"
      (str[n]).replace "wack"
      n = n + 4
    elsif str[n] == "x"
      (str[n]).replace "ex"
      n = n + 2
    elsif str[n] == "y"
      (str[n]).replace "yub"
      n = n + 3
    elsif str[n] == "z"
      (str[n]).replace "zub"
      n = n + 3
    end
    l = str.length
  end
  str
end
