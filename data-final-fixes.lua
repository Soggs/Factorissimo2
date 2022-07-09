local solar_panels = data.raw["solar-panel"]

for _, v in pairs(solar_panels) do
  local collision_mask = v.collision_mask
  if collision_mask == nil then
    -- If collision_mask is nil it defaults to "item-layer", "object-layer", "player-layer" and "water-tile" so we have to add those layers and our new layer
    collision_mask = {"item-layer", "object-layer", "player-layer", "water-tile", solar_panel_collision_layer}
  else
    collision_mask[#collision_mask] = solar_panel_collision_layer
  end
  v.collision_mask = collision_mask
end