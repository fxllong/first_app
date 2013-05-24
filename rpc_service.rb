require 'protobuf/rpc/server'
require 'protobuf/rpc/handler'
#require 'rpc.pb'
require File.expand_path('../rpc.pb', __FILE__)
class Demo::SearchHandler < Protobuf::Rpc::Handler
    request Demo::SearchRequest
    response Demo::SearchResponse
    
    def self.process_request(request, response)
    if request.keyword == 'google'
    response.result = 'www.google.com'
    elsif request.keyword == 'freewheel'
    response.result = 'www.freewheel.tv'
    else
    response.result = ''
end
end
end

class Demo::RpcService < Protobuf::Rpc::Server
    def setup_handlers
        @handlers = {
            :search => Demo::SearchHandler,
        } 
    end
end

