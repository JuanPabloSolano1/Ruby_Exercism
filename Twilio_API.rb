require 'twilio-ruby'

account_sid = 'AC99014ee83d797175018ec9f5b70f9128'
auth_token = 'd8725d8caa7f806b8e511e0c251b2de0'
client = Twilio::REST::Client.new(account_sid, auth_token)

from = '+12029153365' # Your Twilio number
to = '+14157699904' # Your mobile phone number

client.messages.create(
from: "+12029153365",
to: "+14157699904",
body: "Scrutis I love you!"
)
