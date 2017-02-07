# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PhoenixBlog.Repo.insert!(%PhoenixBlog.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias PhoenixBlog.Repo
alias PhoenixBlog.Post

Repo.insert! %Post{
  title: "title 1",
  body: "body text 1"
}

Repo.insert! %Post{
  title: "title 2",
  body: "body text 2"
}

Repo.insert! %Post{
  title: "title 3",
  body: "body text 3"
}
