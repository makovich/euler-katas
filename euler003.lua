require 'hlp'

find = function (x)
  for _it, n in nat(2) do
    if n > x then
      return nil
    end

    while x % n == 0 do
      x = x // n
    end

    if x == 1 then
      return n
    end
  end
end

dbg(find(600851475143))
