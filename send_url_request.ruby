require "uri"
require "net/http"
require "json"

INITIAL_URL = "https://www.letsrevolutionizetesting.com/challenge.json"

# Algorithm
# send request
# get follow url
# add_json after challenge to make json url
# send request again if it has follow on return

# return_format sample = {
# "follow": "https://www.letsrevolutionizetesting.com/challenge?id=756775492",
# "message": "This is not the end"
# }

def send_request(url = INITIAL_URL)
    uri = URI(url)
    request = Net::HTTP.get_response(uri)
    if request.is_a?(Net::HTTPSuccess)
        json_response = JSON.parse(request.body)
        if json_response.key?("follow")
            new_url = get_follow_url(json_response)
            puts new_url
            send_request(new_url)
        else
            puts json_response
            return json_response
        end
    end
end

def get_follow_url(data)
    # the returned url is not in json format
    follow_url_raw = data["follow"] 
    return make_url_json(follow_url_raw)
end

def make_url_json(follow_url_raw)
    return modified_content = follow_url_raw.gsub('challenge', 'challenge.json')
end

send_request()