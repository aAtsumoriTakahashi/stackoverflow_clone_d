use Croma

defmodule StackoverflowCloneD.NonEmptyString do
  use Croma.SubtypeOfString, pattern: ~r"\A.+\Z"
end
