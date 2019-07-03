-- Copyright 2019 Xingwang Liao <kuoruan@gmail.com>
-- Licensed to the public under the MIT License.

local dsp = require "luci.dispatcher"

local m, s, o

m = Map("v2ray", "%s - %s" % { translate("V2Ray"), translate("Reverse") })

s = m:section(NamedSection, "main", "reverse")
s.anonymous = true
s.addremove = false

o = s:option(DynamicList, "bridges", translate("Bridges"))

o = s:option(DynamicList, "portals", translate("Portals"))

return m