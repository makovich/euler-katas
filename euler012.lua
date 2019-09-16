require 'hlp'

lt_500_divs = function (n)
  local MAX_DIVS = 500
  local divs = 2

  for i=1,math.sqrt(n) do
    if n % i == 0 then
      divs = divs + 2
    end
  end

  return divs < MAX_DIVS
end

dbg(nat():map(function (x) return x * (x + 1) // 2 end):drop(lt_500_divs):head())
