defmodule HounddyWeb.Schema.Types do
  use Absinthe.Schema.Notation

  alias HounddyWeb.Schema.Types

  import_types(Types.Usertype)
end
