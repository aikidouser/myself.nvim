local status, session = pcall(require, "mini.sessions")
if not status then
  return
end

session.setup({
  autowrite = true,
  force = { read = false, write = true, delete = true },
})
