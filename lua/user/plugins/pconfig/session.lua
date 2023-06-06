local status, session = pcall(require, "mini.sessions")
if not status then
  return
end

session.setup({
  autowrite = false,
  force = { read = false, write = true, delete = true },
})
