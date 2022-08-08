local present, auto_session = pcall(require, "auto-session")

if not present then
  return
end

-- local close_tree = function ()
--   local view = require "nvim-tree.view"
--   if view.is_visible() then
--     view.close()
--   end
-- end

auto_session.setup {
  log_level = 'info',
  auto_session_enabled = true,
  auto_session_create_enabled = true,
  auto_save_enabled = false,
  auto_restore_enabled = true,
  -- pre_save_cmds = {"tabdo NvimTreeClose"},
  post_restore_cmds = {"tabdo NvimTreeOpen"}
}
