defmodule HounddyWeb.Schema do
  use Absinthe.Schema

  import_types(HounddyWeb.Schema.AccountsTypes)
  import_types(HounddyWeb.Schema.ProfilesTypes)

  query do
    import_fields(:account_queries)
    import_fields(:profile_queries)
  end

  mutation do
    import_fields(:account_mutations)
    import_fields(:profile_mutations)
  end
end
