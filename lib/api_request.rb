# a helper for showing the API request endpoint URLs
def api_url(endpoint)
  "https://app.jetbuilt.com/api#{endpoint}"
end

def curl_cmd(endpoint, options = {})
  options = { command: 'GET' }.merge!(options)

  curl = 'curl'
  curl += ' --include' if options[:curl_include] == true
  curl += " \"#{api_url(endpoint)}\" \\\n"
  curl += "  -X #{options[:command]} \\\n" unless options[:command] == 'GET'
  curl += "  -H \"#{auth_token}\" \\\n"
  curl += "  -H \"Accept: application/vnd.jetbuilt.v1\" \\\n"
end

def curl_request(endpoint, format, options = {})
  curl =
    if format == 'json'
      curl_json_request(endpoint, options)
    else
      curl_form_request(endpoint, options)
    end
  # remove any trailing \
  curl.gsub(/ \\\n$/, '')
end

def curl_form_request(endpoint, options = {})
  options = { name: endpoint.split('/').last.chomp('s') }.merge(options)
  curl = curl_cmd(endpoint, options)
  if options[:data]
    options[:data].each do |k, v|
      curl += if k == :image
                "  -F \"#{options[:name]}[#{k}]=@#{v}\" \\\n"
              else
                "  -F \"#{options[:name]}[#{k}]=#{v}\" \\\n"
              end
    end
  end
  curl
end

def curl_json_request(endpoint, options = {})
  curl = curl_cmd(endpoint, options)
  curl += "  -H 'Content-Type: application/json' \\\n"
  if options[:data]
    data = options[:data].clone
    image = data.delete(:image)
    curl += "  -d '{\n"
    data.each do |k, v|
      curl += "        \"#{k}\": \"#{v}\""
      curl += ",\n" unless k == data.keys.last
    end
    curl += "\n      }'"
  end
  curl
end

def api_key
  'YOURAPIKEY'
end

def auth_token
  "Authorization: Token token=#{api_key}"
end

def shell_example(endpoint, options = {})
  <<~EOF
    ```shell--json
    #{curl_request(endpoint, 'json', options)}
    ```

    ```shell--kv
    #{curl_request(endpoint, 'form', options)}
    ```
  EOF
end
