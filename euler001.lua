require 'hlp'

isFooBar = function (v)
  return v % 3 == 0 or v % 5 == 0
end

dbg(sum(filter(isFooBar, range(1, 999))))
