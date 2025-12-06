require "json"
require "http/client"

class TempMailsCc
  API_PATH = "api"
  def initialize()
    @headers = HTTP::Headers {
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://www.tempmails.cc")
    @http_client = HTTP::Client.new(uri)
  end

  def generate_email() : JSON::Any
    JSON.parse(
      @http_client.post(
        "/#{API_PATH}/mailboxes", headers: @headers).body)
  end

  def get_inbox(email : String) : JSON::Any
    JSON.parse(
      @http_client.post(
        "/#{API_PATH}/mailboxes/#{email}", headers: @headers).body)
  end
end
