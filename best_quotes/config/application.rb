require "rulers"
require "./app/controllers/quotes_controller"

$LOAD_PATH << File.join(File.dirname(__FILE__),
                        "..", "app",
                        "controllers")

module BestQuotes
  class Application < Rulers::Application
  end
end
