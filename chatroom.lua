Members = Members or {}


-- Modify `chatroom.lua` to include a handler for `Members`
-- to register to the chatroom with the following code:

  Handlers.add(
    "Register",
    Handlers.utils.hasMatchingTag("Action", "Register"),
    function (msg)
      table.insert(Members, msg.From)
      Handlers.utils.reply("registered")(msg)
    end
  )