local status, session = pcall(require, "mini.sessions")
if not status then
  return
end

session.setup({})
