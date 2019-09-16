require 'hlp'

triplet_product = function ()
  for c=998,1,-1 do
    for a=1,998 do
      local b = 1000 - (c + a)
      if a < b and b < c and a*a + b*b == c*c then
        return a * b * c
      end
    end
  end
end

dbg(triplet_product())
