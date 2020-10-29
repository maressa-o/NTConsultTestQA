class ServiceJSON_API
    
    include HTTParty
    base_uri CONFIG['base_uri']
    format :json

    def get_data(resource)
        self.class.get('/' + resource, :headers => {'Content-Type' => 'application/json'})
    end

    def post_body(title, body, userId)
        json = JSON.parse(File.read('./features/contracts/create-new-post.json'))
        json["title"] = title
        json["body"] = body
        json["userId"] = userId
        @post_body = json.to_json
    end

    def create_post(resource, body)
        self.class.post('/' + resource, :headers => {'Content-Type' => 'application/json'}, :body => body)
    end

    def user_body(id, phone)
        json = JSON.parse(File.read('./features/contracts/update-user-phone.json'))
        json["id"] = id
        json["phone"] = phone
        @post_body = json.to_json
    end

    def update_user(resource, id, body)
        self.class.put('/' + resource + '/' + id.to_s, :headers => {'Content-Type' => 'application/json'}, :body => body)
    end

    def delete_photo(resource, id)
        self.class.delete('/' + resource + '/' + id, :headers => {'Content-Type' => 'application/json'})
    end
end