local status, todo_highlight = pcall(require, "todo-comments")
if not status then
  return
end

todo_highlight.setup({
  highlight = {
    comments_only = false,
  },
})
