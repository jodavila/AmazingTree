defmodule Tree.Repo do
  use Ecto.Repo,
    otp_app: :tree,
    adapter: Ecto.Adapters.MyXQL
end
