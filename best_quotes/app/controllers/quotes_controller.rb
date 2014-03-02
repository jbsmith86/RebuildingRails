class QuotesController < Rulers::Controller
  def index
    quotes = FileModel.all
    render :index, :quotes => quotes
  end

  def show
    quote = FileModel.find(params["id"])
    ua = request.user_agent
    render_response :quote, :obj => quote, :ua => ua
  end

  def new_quote
    attrs = {
      "submitter" => "web user",
      "quote" => "A picture is worth a thousand pixels",
      "attribution" => "Me"
    }
    m = FileModel.create attrs
    render :quote, :obj => m
  end

  def a_quote
    render :a_quote, :noun => :winking
  end

  def update_quote
    attrs = {
       "id" => "1",
       "submitter" => "Myself",
       "quote" => "Intelligence is the ability to adapt to change.",
       "attribution" => "Stephen Hawking"
     }
     FileModel.update attrs
     quotes = FileModel.all
     render :index, :quotes => quotes
  end

  def quote_1
    quote_1 = FileModel.find(1)
    render :quote, :obj => quote_1
  end
end
