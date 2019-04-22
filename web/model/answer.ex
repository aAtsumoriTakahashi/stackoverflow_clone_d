use Croma

defmodule StackoverflowCloneD.Model.Answer do
  @moduledoc """
  Answer of StackoverflowCloneD app.
  """

  defmodule Body do
    use Croma.SubtypeOfString, pattern: ~r/\A[\s\S]{1,3000}\z/u
  end

  use AntikytheraAcs.Dodai.Model.Datastore, data_fields: [
    body:        Body,
    user_id:     StackoverflowCloneD.DodaiId,
    question_id: StackoverflowCloneD.DodaiId,
    comments:    StackoverflowCloneD.CommentList,
  ]
end
