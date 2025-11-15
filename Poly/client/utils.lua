local utils = Poly.utils

local rad, cos, sin = math.rad, math.cos, math.sin

---Rotate a point around an origin by a given heading in degrees.
---@param origin vector2
---@param point vector2
---@param theta number
---@return vector2
function utils.rotate2D(origin, point, theta)
  if theta == 0.0 then return point end

  local p = point - origin
  local pX, pY = p.x, p.y
  theta = rad(theta)
  local cosTheta = cos(theta)
  local sinTheta = sin(theta)
  local x = pX * cosTheta - pY * sinTheta
  local y = pX * sinTheta + pY * cosTheta
  return vector2(x, y) + origin
end

local function clamp(value, minValue, maxValue)
  if value < minValue then return minValue end
  if value > maxValue then return maxValue end
  return value
end

utils.clamp = clamp

---Create a reusable converter that snaps grid coordinates into [0, divisions-1].
---@param divisions number
---@return fun(cell:number):number
function utils.buildGridCoordinateNormalizer(divisions)
  local limit = divisions - 1
  if limit <= 0 then return function(cell) return 0 end end
  return function(cell)
    return clamp(cell, 0, limit)
  end
end

return utils
