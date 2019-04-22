use Croma

defmodule StackoverflowCloneD.Gettext do
  use Antikythera.Gettext, otp_app: :stackoverflow_clone_d

  defun put_locale(locale :: v[String.t]) :: nil do
    Gettext.put_locale(__MODULE__, locale)
  end
end
