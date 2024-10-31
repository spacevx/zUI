---@param menu zUI @Menu à enregistrer.
function RegisterMenu(menu)
    if menu.key and menu.description then
        RegisterCommand(menu.identifier, function()
            menu:SetVisible(not menu:IsVisible())
        end, false)
        RegisterKeyMapping(menu.identifier, menu.description, menu.keyType, menu.key)
    end
end
