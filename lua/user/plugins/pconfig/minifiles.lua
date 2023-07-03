local status, files = pcall(require, "mini.files")
if not status then
  return
end

files.setup()
