function UpdateItems(Menu)
    CreateThread(function()
        while Menu.priority do
            Wait(0)
            if not IsPauseMenuActive() then
                Menu.items = {}
                Menu.itemsManager(Menu)
                SendNUIMessage({
                    action = "zUI-ManageMenu",
                    data = {
                        isVisible = true,
                        items = Menu.items,
                        title = Menu.title,
                        subtitle = Menu.subtitle,
                        banner = Menu.banner,
                    }
                })
            else
                SendNUIMessage({
                    action = "zUI-ManageMenu",
                    data = {
                        isVisible = false,
                    }
                })
            end
        end
    end)
end
