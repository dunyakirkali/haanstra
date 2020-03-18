defmodule HaanstraTest do
  use ExUnit.Case
  doctest Haanstra

  test "send mail" do
    email = %Mailman.Email{
      subject: "Inschrijving",
      from: "dunyakirkali@gmail.com",
      to: ["dunyakirkali@gmail.com"],
      data: [
        name: "Iris Kirkali"
      ],
      text: "Geachte heer/mevrouw, We willen graag onze dochter <%= name %> aanmelden bij Haanstra!",
      html: """
<html>
  <body>
    <b>Hello! <%= name %></b> These are Unicode: qżźół
  </body>
</html>
      """
    }

    Haanstra.deliver(email)
  end
end
