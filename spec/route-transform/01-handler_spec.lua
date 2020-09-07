local ngx = {
    log = spy.new(
        function()
        end
    ),
    var = {
        upstream_uri = "/mock-uri"
    }
}

local RouteTransformHandler = require "kong.plugins.route-transform.handler"

describe(
    "RouteTransformHandler",
    function()
        it(
            "RouteTransformHandler Constructor",
            function()
                RouteTransformHandler:new()
                assert.equal("route-transform", RouteTransformHandler._name)
            end
        )

        it(
            "Upstream URI must be match",
            function()
                RouteTransformHandler:new()
                assert.equal("/mock-uri", ngx.var.upstream_uri)

                local config = {
                    new_uri = "/test/mock-uri"
                }

                RouteTransformHandler:access(config)
                assert.equal("/test/mock-uri", ngx.var.upstream_uri)
            end
        )
    end
)