local ok, autosave = pcall(require, 'auto-save')
if not ok then return end

autosave.setup()
