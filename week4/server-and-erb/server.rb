require 'webrick'
require 'erb'
require_relative 'parse'

class Routes < WEBrick::HTTPServlet::AbstractServlet
  
    def do_GET(request, response) 
        @data = parse_data File.read('football_teams.csv')
        
        case request.path
        when "/"
            response.status = 200
            response['Content-Type'] = 'text/html'
        
            # html_method just takes the logic elsewhere
            response.body = html_file("index.html.erb")
        when "/teams"
            response.status = 200
            response['Content-Type'] = 'text/html'
        
            # html_method just takes the logic elsewhere
            response.body = html_file("teams.html.erb")
        when "/premierships"
            response.status = 200
            response['Content-Type'] = 'text/html'
        
            # html_method just takes the logic elsewhere
            response.body = html_file("premierships.html.erb")
        else
            response.status = 400
            response.body = "Route not found"
        end
    end

    private 
    def html_file(file) 
        path = File.join(__dir__, 'public', file)   
        # binding binds the @variables from the class to the view 
        html = ERB.new(File.open(path).read).result(binding)
        return html
    end
end

server = WEBrick::HTTPServer.new(Port: 3000)
trap 'INT' do server.shutdown end
server.mount '/', Routes
server.start

# data = [
#     {
#         id: 1,
#         team: "Collingwood",
#         city: "Melbourne",
#         premierships: 15
#     },
#     {
#         id: 2,
#         team: "West Coast",
#         city: "Perth",
#         premierships: 4
#     }
# ]

# html = {
#     tag: 'body',
#     class: nil,
#     text_content: nil
#     children: 
#         [ 
#             {
#                 tag: "header",
#                 class: "title",
#                 text_content: nil
#                 children: 
#                     [ 
#                         {
#                             tag: "h1",
#                             class: nil
#                             text_content: "Football teams"
#                             children: nil
#                         }
#                     ]
#             },
#             {
#                 tag: "div",
#                 class: "team-names",
#                 text_content: nil,
#                 children: 
#                     [
#                         {
#                             tag: "ul",

#                         }
                        
#                     ]
#             }
#         ]
#         }
#     ]
# }

# class Car

#     attr_writer :colour

#     def initialize
#         @colour = "red"
#     end

#     # def colour
#     #     @colour
#     # end

#     def colour=(colour)
#         @colour = colour
#     end
# end

# car1 = Car.new
# car1.colour = "blue"