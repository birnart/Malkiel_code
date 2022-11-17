require 'net/http'

uri = URI('https://api.etoro.com/System/V1/AutoComplete')

query = URI.encode_www_form({
    # Request parameters
    'Prefix' => '{string}',
    'InstrumentCount' => '{number}',
    'UserCount' => '{number}'
})

if uri.query && uri.query.length > 0
    uri.query += '&' + query
else
    uri.query = query
end

request = Net::HTTP::Get.new(uri.request_uri)
# Request headers
request['Ocp-Apim-Subscription-Key'] = '{subscription key}'
# Request body
request.body = "{body}"

response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
    http.request(request)
end

puts response.body
