defmodule Meechuv1Web.PageController do
  use Meechuv1Web, :controller

  def index(conn, _params) do
    user = Coherence.current_user(conn)
    render(conn, "index.html", user: user)
  end
end
