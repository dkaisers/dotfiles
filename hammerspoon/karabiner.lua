local usbWatcher = nil

function usbDeviceCallback(data)
    if (data['productID'] == 257) then
        if (data['eventType'] == 'added') then
            hs.execute("/Library/Application\\ Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli --select-profile 'External'")
        elseif (data['eventType'] == 'removed') then
            hs.execute("/Library/Application\\ Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli --select-profile 'Default'")
        end
    end
end

usbWatcher = hs.usb.watcher.new(usbDeviceCallback)
usbWatcher:start()
