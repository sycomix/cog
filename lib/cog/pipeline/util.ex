defmodule Cog.Pipeline.Util do

  alias Cog.Command.Pipeline.Destination

  def here_destination(request) do
    {:ok, dests} = Destination.process(["here"], request.sender, request.room, request.provider)
    dests
  end

end
