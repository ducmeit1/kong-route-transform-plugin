package = "kong-route-transform-plugin"
version = "0.1.0-1"

source = {
    url = "git://github.com/ducmeit1/kong-route-transform-plugin",
    tag = "0.1.0"
}

supported_platforms = {"linux", "macosx"}
description = {
  summary = "Kong Route Transform Plugin",
  license = "Apache 2.0",
}

build = {
    type = "builtin",
    modules = {
        ["kong.plugins.route-transform.handler"] = "kong/plugins/route-transform/handler.lua",
        ["kong.plugins.route-transform.access"] = "kong/plugins/route-transform/access.lua",
        ["kong.plugins.route-transform.schema"] = "kong/plugins/route-transform/schema.lua",
    }
}