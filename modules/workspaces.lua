-- https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- initialise workspaces by names
for i, ws in ipairs(workspaces) do
    hl.workspace_rule({ workspace = i, default_name = ws.name, persistent = true })
end
