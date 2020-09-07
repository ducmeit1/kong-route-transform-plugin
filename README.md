[![Build Status](https://travis-ci.com/ducmeit1/kong-route-transform-plugin.svg?branch=master)](https://travis-ci.com/ducmeit1/kong-route-transform-plugin)

# Kong Route Trasnform Plugin

Kong Route Transform Plugin supports route to another upstream's uri and upstream's name

## How it works?

Let imaging about a day you want to keep the HTTP URI for the client, however you want to direct this HTTP URI to another URI of the upstream. (Its can be the next version)

For example:

- example.com/onboarding -> Upstream's uri: onboarding

Change to:

- example.com/onbiard -> Upstream's uri: new-onboarding

You also can change the upstream's name

## Usages

Enabling the plugin on a Route
Configure this plugin on a Route with:

```shell
$ curl -X POST http://kong:8001/routes/{route_id}/plugins \
    --data "name=route-transform" \
    --data "new_uri=bar" \
    --data "new_upstream=foobar"
```

## Configuration

| form parameter                                    | default             | description                                                                                                                                                                                        |
| ---                                               | ---                 | ---                                                                                                                                                                                                |
| `name`                                            |                     | The name of the plugin to use, in this case `route-transform`
| `new_uri`                                            |                     | The new uri you want to change
| `new_upstream`                                            |                     | The new upstream you want to change