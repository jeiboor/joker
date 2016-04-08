local function block_user_callback(cb_extra, success, result)
 local user = "user#id"..result.id
 if success == 0 then
  return "you cant block this user"
 end
 block_user(user, cb_ok, false)
end

local function run(msg, matches)
 local user = "user#id"..matches[1]
 block_user(user, callback, false)
 return "done"
end

return {
 description = "User Blocker", 
 usage = "!block [id] : block user by telegram id",
 patterns = "^[!/#]block (%d+)$", 
 run = run,
 privileged = true
}
