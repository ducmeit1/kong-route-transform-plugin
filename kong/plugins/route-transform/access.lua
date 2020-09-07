local kong = kong
local kong_service = kong.service
local ngx = ngx
local _M = {}

function _M.execute(config)
    -- setup uri of upstream, for example /foo/bar
    ngx.var.upstream_uri = config.new_uri

    -- set upstream, for example my_upstream
    if config.new_upstream then
        kong_service.set_upstream(config.new_upstream)
    end
end

return _M