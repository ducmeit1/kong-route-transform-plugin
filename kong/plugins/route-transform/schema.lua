local typedefs = require "kong.db.schema.typedefs"

return {
    name = "route-transform",
    fields = {
        {
            -- This plugin will work with all consumer
            consumer = typedefs.no_consumer
        },
        {
            -- This plugin only work with http
            protocols = typedefs.protocols_http
        },
        {
            config = {
                type = "record",
                fields = {
                    {new_uri = {type = "string", required = true}}, -- /foo -> /bar/foo
                    {new_upstream = {type = "string", required = false}}, -- change upstream
                }
            }
        }
    }
}
