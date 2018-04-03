# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Meechuv1.Repo.insert!(%Meechuv1.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

Meechuv1.Repo.delete_all Meechuv1.Coherence.User

Meechuv1.Coherence.User.changeset(%Meechuv1.Coherence.User{}, %{name: "Test User", email: "testuser@example.com", password: "secret", password_confirmation: "secret"})
|> Meechuv1.Repo.insert!
