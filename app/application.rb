class Application
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path.match(/items/)
    search_term = req.params["ITEM NAME"]
      resp.write search_term.price
    else
      resp.write "Route not found"
      resp.status = 404
    end
 
    resp.finish
  end
end