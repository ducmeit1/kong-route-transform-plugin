local access = require "kong.plugins.route-transform.access"

local BasePlugin = require "kong.plugins.base_plugin"
local RouteTransformHandler = BasePlugin:extend()

RouteTransformHandler.VERSION = "1.0.0"
RouteTransformHandler.PRIORITY = 100

function RouteTransformHandler:new()
    RouteTransformHandler.super.new(self, "route-transform")
end

function RouteTransformHandler:access(config)
    RouteTransformHandler.super.access(self)
    access.execute(config)
end

return RouteTransformHandler