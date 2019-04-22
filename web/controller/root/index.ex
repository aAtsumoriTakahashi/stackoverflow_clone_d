use Croma

defmodule StackoverflowCloneD.Controller.Root.Index do
  use StackoverflowCloneD.Controller.Application

  defun index(conn :: Conn.t) :: Conn.t do
    Conn.render(conn, 200, "root/index", [])
  end
end
