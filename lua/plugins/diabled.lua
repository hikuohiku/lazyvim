local function getHostname()
  local f = io.popen("hostname")
  if f == nil then
    return ""
  end
  local hostname = f:read("*a") or ""
  f:close()
  hostname = string.gsub(hostname, "\n$", "")
  return hostname
end

local hostname = getHostname()
return {
  -- diable mason due to nixos incompatibility
  -- { "williamboman/mason.nvim", enabled = hostname ~= 'hikuo-desktop' },
  -- solved issue so commented out
}
