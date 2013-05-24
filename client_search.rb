#!/usr/bin/env ruby
require 'protobuf/rpc/client'
#require 'rpc.pb'
require File.expand_path('../rpc.pb', __FILE__)

# build request
request1 = Demo::SearchRequest.new
request1.keyword = 'google'
request2 = Demo::SearchRequest.new
request2.keyword = 'freewheel'

# create blunk response
response1 = Demo::SearchResponse.new
response2 = Demo::SearchResponse.new

# execute rpc
Protobuf::Rpc::Client.new('localhost', 9999).call :search, request1, response1
Protobuf::Rpc::Client.new('localhost', 9999).call :search, request2, response2

p response1.result
p response2.result
