require 'hlp'

reverse = function (n)
  local res = 0

  repeat
    local rem = n % 10
    local div = n // 10
    res = res * 10 + rem
    n = div
    -- dbg("n="..n.." res="..res.." div="..div.." rem="..rem)
  until n == 0

  return res
end

palindrome = function()
  local res = 0

  for i=999,1,-1 do
    for j=999,1,-1 do
      local prod = i*j
      if prod == reverse(prod) then
        res = (res < prod) and prod or res
      end
    end
  end

  return res
end

dbg(palindrome())
