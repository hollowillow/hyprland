-- https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- initialise workspaces by names
for i, ws in ipairs(workspaces) do
    hl.workspace_rule({ workspace = i, default_name = ws.name })
end

-- define custom behaviour
hl.workspace_rule({
    workspace = 'name:terminal',
    on_created_empty = "$TERMINAL -e tmux new-session -A -s init"
})

hl.workspace_rule({
    workspace = 'name:browser',
    on_created_empty = browser
})

hl.workspace_rule({
    workspace = 'name:media',
    on_created_empty = "$TERMINAL -e tmux-session media"
})
