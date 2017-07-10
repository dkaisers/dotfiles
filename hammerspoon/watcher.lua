-- watcher automatically reloads the hammerspoon config upon changes
function reload_config(files)
    hs.reload();
end

hs.pathwatcher.new(os.getenv("HOME").."/.hammerspoon/", reload_config):start()
