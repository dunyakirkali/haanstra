defmodule Haanstra do
  def deliver(email) do
    Mailman.deliver(email, config())
  end

  def config do
    %Mailman.Context{
      config: %Mailman.SmtpConfig{
        relay: "smtp.gmail.com",
        username: "dunyakirkali",
        password: "PASS",
        port: 587,
        tls: :always,
        auth: :always,
      },
      composer: %Mailman.EexComposeConfig{}
    }
  end
end
