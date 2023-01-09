local status, starter = pcall(require, "mini.starter")
if not status then
  return
end

starter.setup({
  autoopen = true,
  items = {
    -- Use this if you set up 'mini.sessions'
    starter.sections.sessions(5, true),
    starter.sections.telescope(),
    starter.sections.builtin_actions(),
  },
  content_hooks = {
    starter.gen_hook.adding_bullet(),
    starter.gen_hook.aligning("center", "center"),
  },
})
