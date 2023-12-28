require_relative "test_helper"

class TestApp < Rulers::Application
end

class RulersAppTest < Minitest::Test
    include Rack::Test::Methods 

    def app 
        puts "app was called"
        TestApp.new       
    end

    def test_request
        get "/"

        assert last_response.ok?
        body = last_response.body
        assert body["Hello"]
    end

    def test_arr
        assert [].deeply_empty? == true
        body = [1,2].is_nathan?
        assert body["Yo"]
    end

end