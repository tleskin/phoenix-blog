# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Blog.Repo.insert!(%Blog.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Blog.Repo
alias Blog.Post

[
  %Post{
    title: "Test Title",
    body: "This is the body",
    author: "Tom Leskin"
  }
] |> Enum.each(&Repo.insert!(&1))
