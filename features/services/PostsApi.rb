class PostsApi
    include HTTParty

    base_uri 'http://jsonplaceholder.typicode.com/'

    # format :json

    def criar_post(body)
        self.class.post("/comments", :body => body.to_json)
    end

    def buscar_post(id=nil)
        self.class.get("/comments/#{id}")
    end

    def deletar_post(id=nil)
        self.class.delete("/comments/#{id}")
    end
end