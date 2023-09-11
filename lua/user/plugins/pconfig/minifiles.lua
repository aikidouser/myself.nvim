local status, files = pcall(require, "mini.files")
if not status then
  return
end

files.setup({
  windows = {
    preview = true,
    width_preview = 40,
  }
})
