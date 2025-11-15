Poly = Poly or {}
Poly.utils = Poly.utils or {}
Poly.constants = Poly.constants or {}

-- Basic helper to memoize expensive function calls. Used by math-heavy modules.
function Poly.utils.memoize(fn)
  local cache = {}
  return function(key)
    local value = cache[key]
    if value == nil then
      value = fn(key)
      cache[key] = value
    end
    return value
  end
end

return Poly
