package.path = package.path .. ';../?.lua'
local Request = require 'request'

i =0
local headers = {'GET /Makefile?a=b&c=d HTTP/1.1','A:B', 'C:D'}
local err = {nil, nil, 'érro'}

local r = Request:new({receive=function () i=i + 1;return  headers[i], err[i]; end})

print(r:path())
print(r:params().a)
print(r:headers().A)
print(r:method())