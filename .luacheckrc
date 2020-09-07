std             = "ngx_lua"
unused_args     = false
redefined       = false
max_line_length = false


globals = {
    "kong",
}


not_globals = {
    "string.len",
    "table.getn",
}


ignore = {
    "6.", -- ignore whitespace warnings
}


files["spec/**/*.lua"] = {
    std = "ngx_lua+busted",
}