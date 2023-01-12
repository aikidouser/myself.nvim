local status, highlight = pcall(require, "todo-comments")
if not status then
  return
end

highlight.setup()
