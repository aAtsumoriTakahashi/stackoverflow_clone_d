use Croma

defmodule StackoverflowCloneD.Comment do
  defmodule Body do
    use Croma.SubtypeOfString, pattern: ~r/\A[\s\S]{1,1000}\z/u
  end
  use Croma.Struct, recursive_new?: true, fields: [
    id:         StackoverflowCloneD.DodaiId,
    body:       Body,
    user_id:    StackoverflowCloneD.DodaiId,
    created_at: Croma.String,
  ]
end

defmodule StackoverflowCloneD.CommentList do
  use Croma.SubtypeOfList, elem_module: StackoverflowCloneD.Comment
end
