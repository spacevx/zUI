--- Ajouter un séparateur au menu.
---@param Title string | number @Titre du séparateur.
---@param Position string | nil @Position du séparateur.
function zUI:AddSeparator(Title, Position)
    local Item = {}
    Item.type = "separator"
    Item.title = Title
    Item.position = Position or "center"
    self.items[#self.items+1] = Item
end

---@alias Position
---| "left"
---| "center"
---| "right"
