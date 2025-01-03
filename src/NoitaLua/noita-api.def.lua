---@param filename string
---@param pos_x number? 0
---@param pos_y number? 0
---@return number entity_id
function EntityLoad(filename, pos_x, pos_y) end
---@param filename string
---@param pos_x number? 0
---@param pos_y number? 0
---@return number entity_id
function EntityLoadEndGameItem(filename, pos_x, pos_y) end
---@param filename string
---@param pos_x number? 0
---@param pos_y number? 0
function EntityLoadCameraBound(filename, pos_x, pos_y) end
---Loads components from 'filename' to 'entity'. Does not load tags and other stuff.
---@param filename string
---@param entity number
function EntityLoadToEntity(filename, entity) end
---Note: works only in dev builds.
---@param entity_id number
---@param filename string
function EntitySave(entity_id, filename) end
---@param name string? ""
---@return number entity_id
function EntityCreateNew(name) end
---@param entity_id number
function EntityKill(entity_id) end
---@param entity_id number
---@return boolean
function EntityGetIsAlive(entity_id) end
---@param entity_id number
---@param component_type_name string
---@param table_of_component_values string[]? nil
---@return number component_id
function EntityAddComponent(entity_id, component_type_name, table_of_component_values) end
---@param entity_id number
---@param component_id number
function EntityRemoveComponent(entity_id, component_id) end
---Returns a table of component ids.
---@param entity_id number
---@return number[]
function EntityGetAllComponents(entity_id) end
---@param entity_id number
---@param component_type_name string
---@param tag string? ""
---@return number[]|nil component_id
function EntityGetComponent(entity_id, component_type_name, tag) end
---@param entity_id number
---@param component_type_name string
---@param tag string? ""
---@return number|nil component_id
function EntityGetFirstComponent(entity_id, component_type_name, tag) end
---@param entity_id number
---@param component_type_name string
---@param tag string? ""
---@return number[]|nil component_id
function EntityGetComponentIncludingDisabled(entity_id, component_type_name, tag) end
---@param entity_id number
---@param component_type_name string
---@param tag string? ""
---@return number|nil component_id
function EntityGetFirstComponentIncludingDisabled(entity_id, component_type_name, tag) end
---@param entity_id number
---@param x number
---@param y number? 0
---@param rotation number? 0
---@param scale_x number? 1
---@param scale_y number? 1
function EntitySetTransform(entity_id, x, y, rotation, scale_x, scale_y) end
---Sets the transform and tries to immediately refresh components that calculate values based on an entity's transform.
---@param entity_id number
---@param x number
---@param y number? 0
---@param rotation number? 0
---@param scale_x number? 1
---@param scale_y number? 1
function EntityApplyTransform(entity_id, x, y, rotation, scale_x, scale_y) end
---@param entity_id number
---@return number x, number y, number rotation, number scale_x, number scale_y
function EntityGetTransform(entity_id) end
---@param parent_id number
---@param child_id number
function EntityAddChild(parent_id, child_id) end
---If passed the optional 'tag' parameter, will return only child entities that have that tag (If 'tag' isn't a valid tag name, will return no entities). If no entities are returned, might return either an empty table or nil.
---@param entity_id number
---@param tag string? ""
---@return number[]|nil entity_id
function EntityGetAllChildren(entity_id, tag) end
---@param entity_id number
---@return number entity_id
function EntityGetParent(entity_id) end
---Returns the given entity if it has no parent, otherwise walks up the parent hierarchy to the topmost parent and returns it.
---@param entity_id number
---@return number entity_id
function EntityGetRootEntity(entity_id) end
---@param entity_id number
function EntityRemoveFromParent(entity_id) end
---@param entity_id number
---@param tag string
---@param enabled boolean
function EntitySetComponentsWithTagEnabled(entity_id, tag, enabled) end
---@param entity_id number
---@param component_id number
---@param is_enabled boolean
function EntitySetComponentIsEnabled(entity_id, component_id, is_enabled) end
---@param entity_id number
---@return string name
function EntityGetName(entity_id) end
---@param entity_id number
---@param name string
function EntitySetName(entity_id, name) end
---Returns a string where the tags are comma-separated, or nil if 'entity_id' doesn't point to a valid entity.
---@param entity_id number
---@return string|nil string
function EntityGetTags(entity_id) end
---Returns all entities with 'tag'.
---@param tag string
---@return number[] entity_id
function EntityGetWithTag(tag) end
---Returns all entities in 'radius' distance from 'x','y'.
---@param pos_x number
---@param pos_y number
---@param radius number
---@return number[] entity_id
function EntityGetInRadius(pos_x, pos_y, radius) end
---Returns all entities in 'radius' distance from 'x','y'.
---@param pos_x number
---@param pos_y number
---@param radius number
---@param entity_tag string
---@return number[] entity_id
function EntityGetInRadiusWithTag(pos_x, pos_y, radius, entity_tag) end
---@param pos_x number
---@param pos_y number
---@return number entity_id
function EntityGetClosest(pos_x, pos_y) end
---@param pos_x number
---@param pos_y number
---@param tag string
---@return number entity_id
function EntityGetClosestWithTag(pos_x, pos_y, tag) end
---@param name string
---@return number entity_id
function EntityGetWithName(name) end
---@param entity_id number
---@param tag string
function EntityAddTag(entity_id, tag) end
---@param entity_id number
---@param tag string
function EntityRemoveTag(entity_id, tag) end
---@param entity_id number
---@param tag string
---@return boolean
function EntityHasTag(entity_id, tag) end
---Return value example: 'data/entities/items/flute.xml'. Incorrect value is returned if the entity has passed through the world streaming system.
---@param entity_id number
---@return string full_path
function EntityGetFilename(entity_id) end
---returns the max entity ID currently in use. Entity IDs are increased linearly.
---@return number entity_max_id
function EntitiesGetMaxID() end
---Deprecated, use ComponentGetValue2() instead.
---@param component_id number
---@param variable_name string
---@return string|nil string
function ComponentGetValue(component_id, variable_name) end
---Deprecated, use ComponentGetValue2() instead.
---@param component_id number
---@param variable_name string
---@return boolean? boolean
function ComponentGetValueBool(component_id, variable_name) end
---Deprecated, use ComponentGetValue2() instead.
---@param component_id number
---@param variable_name string
---@return number? number
function ComponentGetValueInt(component_id, variable_name) end
---Deprecated, use ComponentGetValue2() instead.
---@param component_id number
---@param variable_name string
---@return number? number
function ComponentGetValueFloat(component_id, variable_name) end
---Deprecated, use ComponentGetValue2() instead.
---@param component_id number
---@param variable_name string
---@return number? x, number? y
function ComponentGetValueVector2(component_id, variable_name) end
---Deprecated, use ComponentSetValue2() instead.
---@param component_id number
---@param variable_name string
---@param value string
function ComponentSetValue(component_id, variable_name, value) end
---Deprecated, use ComponentSetValue2() instead.
---@param component_id number
---@param variable_name string
---@param x number
---@param y number
function ComponentSetValueVector2(component_id, variable_name, x, y) end
---Deprecated, use ComponentSetValue2() instead.
---@param component_id number
---@param variable_name string
---@param min number
---@param max number
function ComponentSetValueValueRange(component_id, variable_name, min, max) end
---Deprecated, use ComponentSetValue2() instead.
---@param component_id number
---@param variable_name string
---@param min number
---@param max number
function ComponentSetValueValueRangeInt(component_id, variable_name, min, max) end
---Deprecated, use ComponentSetValue2() instead.
---@param component_id number
---@param variable_name string
---@param value string
function ComponentSetMetaCustom(component_id, variable_name, value) end
---Deprecated, use ComponentGetValue2() instead.
---@param component_id number
---@param variable_name string
---@return string|nil string
function ComponentGetMetaCustom(component_id, variable_name) end
---Deprecated, use ComponentObjectGetValue2() instead.
---@param component_id number
---@param object_name string
---@param variable_name string
---@return string|nil string
function ComponentObjectGetValue(component_id, object_name, variable_name) end
---Deprecated, use ComponentObjectSetValue2() instead.
---@param component_id number
---@param object_name string
---@param variable_name string
---@param value string
function ComponentObjectSetValue(component_id, object_name, variable_name, value) end
---@param component_id number
---@param tag string
function ComponentAddTag(component_id, tag) end
---@param component_id number
---@param tag string
function ComponentRemoveTag(component_id, tag) end
---Returns a string where the tags are comma-separated, or nil if can't find 'component_id' component.
---@param component_id number
---@return string|nil tags
function ComponentGetTags(component_id) end
---@param component_id number
---@param tag string
---@return boolean
function ComponentHasTag(component_id, tag) end
---Returns one or many values matching the type or subtypes of the requested field. Reports error and returns nil if the field type is not supported or field was not found. This is up to 7.5x faster than the old ComponentSetValue functions.
---@param component_id number
---@param field_name string
---@return any?
function ComponentGetValue2(component_id, field_name) end
---Sets the value of a field. Value(s) should have a type matching the field type. Reports error if the values weren't given in correct type, the field type is not supported, or the component does not exist. This is up to 20x faster than the old ComponentSetValue functions.
---@param component_id number
---@param field_name string
---@vararg any
function ComponentSetValue2(component_id, field_name, ...) end
---Returns one or many values matching the type or subtypes of the requested field in a component subobject. Reports error and returns nil if the field type is not supported or 'object_name' is not a metaobject.
---@param component_id number
---@param object_name string
---@param field_name string
---@return any
function ComponentObjectGetValue2(component_id, object_name, field_name) end
---Sets the value of a field in a component subobject. Value(s) should have a type matching the field type. Reports error if the values weren't given in correct type, the field type is not supported or 'object_name' is not a metaobject.
---@param component_id number
---@param object_name string
---@param field_name string
---@vararg any
function ComponentObjectSetValue2(component_id, object_name, field_name, ...) end
---Creates a component of type 'component_type_name' and adds it to 'entity_id'. 'table_of_component_values' should be a string-indexed table, where keys are field names and values are field values of correct type. The value setting works like ComponentObjectSetValue2(), with the exception that multivalue types are not supported. Additional supported values are _tags:comma_separated_string and _enabled:bool, which basically work like the those fields work in entity XML files. Returns the created component, if creation succeeded, or nil.
---@param entity_id number
---@param component_type_name string
---@param table_of_component_values table<string, any>? nil
---@return number component_id
function EntityAddComponent2(entity_id, component_type_name, table_of_component_values) end
---'type_stored_in_vector' should be "int", "float" or "string".
---@param component_id number
---@param array_member_name string
---@param type_stored_in_vector string
---@return number
function ComponentGetVectorSize(component_id, array_member_name, type_stored_in_vector) end
---'type_stored_in_vector' should be "int", "float" or "string".
---@param component_id number
---@param array_name string
---@param type_stored_in_vector string
---@param index number
---@return number|number|string|nil
function ComponentGetVectorValue(component_id, array_name, type_stored_in_vector, index) end
---'type_stored_in_vector' should be "int", "float" or "string".
---@param component_id number
---@param array_name string
---@param type_stored_in_vector string
---@return number[]|number|string|nil
function ComponentGetVector(component_id, array_name, type_stored_in_vector) end
---Returns true if the given component exists and is enabled, else false.
---@param component_id number
---@return boolean
function ComponentGetIsEnabled(component_id) end
---Returns the id of the entity that owns a component, or 0.
---@param component_id number
---@return number entity_id 0
function ComponentGetEntity( component_id ) end
---Returns a string-indexed table of string.
---@param component_id number
---@return table<string, string>|nil
function ComponentGetMembers(component_id) end
---Returns a string-indexed table of string or nil.
---@param component_id number
---@param object_name string
---@return table<string, string>|nil
function ComponentObjectGetMembers(component_id, object_name) end
---@param component_id number
---@return string string
function ComponentGetTypeName(component_id) end
---@return number entity_id
function GetUpdatedEntityID() end
---@return number component_id
function GetUpdatedComponentID() end
---@param time_to_execute number
---@param file_to_execute string
---@param function_to_call string? nil
function SetTimeOut(time_to_execute, file_to_execute, function_to_call) end
---@param color number
---@param function_name string
function RegisterSpawnFunction(color, function_name) end
---@param x number
---@param y number
---@param level number
function SpawnActionItem(x, y, level) end
---@param x number
---@param y number
---@param level number
---@param action_count number
---@return number entity_id
function SpawnStash(x, y, level, action_count) end
---@param x number
---@param y number
---@param level number
---@param spawn_now boolean? false
---@return number spawn_state_id, number entity_id
function SpawnApparition(x, y, level, spawn_now) end
---@param entity_file string
---@param stash_entity_id number
function LoadEntityToStash(entity_file, stash_entity_id) end
---@param entity_id number
---@param material_name string
---@param count number
function AddMaterialInventoryMaterial(entity_id, material_name, count) end
---If material_name is empty, all materials will be removed.
---@param entity_id number
---@param material_name string? ""
function RemoveMaterialInventoryMaterial(entity_id, material_name) end
---Returns the id of the material taking the largest part of the first MaterialInventoryComponent in 'entity_id', or 0 if nothing is found.
---@param entity_id number
---@param ignore_box2d_materials boolean? true
---@return number material_type
function GetMaterialInventoryMainMaterial(entity_id, ignore_box2d_materials) end
---@param strength number
---@param x number? camera_x
---@param y number? camera_y
function GameScreenshake(strength, x, y) end
function GameOnCompleted() end
---@param id string
function GameGiveAchievement(id) end
function GameDoEnding2() end
---x = 0 normal world, -1 is first west world, +1 is first east world, if y < 0 it is sky, if y > 0 it is hell 
---@param world_pos_x number
---@param world_pos_y number
---@return number x, number y
function GetParallelWorldPosition(world_pos_x, world_pos_y) end
---@param filename string
---@param pixel_scenes string? "data/biome/_pixel_scenes.xml"
function BiomeMapLoad_KeepPlayer(filename, pixel_scenes) end
---Deprecated. Might trigger various bugs. Use BiomeMapLoad_KeepPlayer() instead.
---@param filename string
function BiomeMapLoad(filename) end
---Can be used to edit biome configs during initialization. See the nightmare mod for an usage example.
---@param filename string
---@param field_name string
---@param value any
function BiomeSetValue(filename, field_name, value) end
---Can be used to read biome configs. Returns one or many values matching the type or subtypes of the requested field. Reports error and returns nil if the field type is not supported or field was not found.
---@param filename string
---@param field_name string
---@return any
function BiomeGetValue(filename, field_name) end
---Can be used to edit biome configs during initialization. See biome_modifiers.lua for an usage example.
---@param filename string
---@param meta_object_name string
---@param field_name string
---@param value any
function BiomeObjectSetValue(filename, meta_object_name, field_name, value) end
---Can be used to edit biome config MaterialComponents during initialization. Sets the given value in all found VegetationComponent with matching tree_material. See biome_modifiers.lua for an usage example.
---@param filename string
---@param material_name string
---@param field_name string
---@param value any
function BiomeVegetationSetValue(filename, material_name, field_name, value) end
---Can be used to edit biome config MaterialComponents during initialization. Sets the given value in the first found MaterialComponent with matching material_name. See biome_modifiers.lua for an usage example.
---@param filename string
---@param material_name string
---@param field_name string
---@param value any
function BiomeMaterialSetValue(filename, material_name, field_name, value) end
---Can be used to read biome config MaterialComponents during initialization. Returns the given value in the first found MaterialComponent with matching material_name. See biome_modifiers.lua for an usage example.
---@param filename string
---@param material_name string
---@param field_name string
---@return any
function BiomeMaterialGetValue(filename, material_name, field_name) end
---@return boolean
function GameIsIntroPlaying() end
---@return boolean
function GameGetIsGamepadConnected() end
---@return number entity_id
function GameGetWorldStateEntity() end
---@return number entity_id
function GameGetPlayerStatsEntity() end
---@return number
function GameGetOrbCountAllTime() end
---@return number
function GameGetOrbCountThisRun() end
---@param orb_id_zero_based number
---@return boolean
function GameGetOrbCollectedThisRun(orb_id_zero_based) end
---@param orb_id_zero_based number
---@return boolean
function GameGetOrbCollectedAllTime(orb_id_zero_based) end
function GameClearOrbsFoundThisRun() end
---Returns the number of orbs, picked or not.
---@return number
function GameGetOrbCountTotal() end
---Converts a numeric material id to the material's strings id.
---@param material_id number
---@return string string
function CellFactory_GetName(material_id) end
---Returns the id of a material.
---@param material_name string
---@return number
function CellFactory_GetType(material_name) end
---Returns the displayed name of a material, or an empty string if 'material_id' is not valid. Might return a text key.
---@param material_id number
---@return string string
function CellFactory_GetUIName(material_id) end
---@param include_statics boolean? true
---@param include_particle_fx_materials boolean? false
function CellFactory_GetAllLiquids(include_statics, include_particle_fx_materials) end
---@param include_statics boolean? true
---@param include_particle_fx_materials boolean? false
function CellFactory_GetAllSands(include_statics, include_particle_fx_materials) end
---@param include_statics boolean? true
---@param include_particle_fx_materials boolean? false
function CellFactory_GetAllGases(include_statics, include_particle_fx_materials) end
---@param include_statics boolean? true
---@param include_particle_fx_materials boolean? false
function CellFactory_GetAllFires(include_statics, include_particle_fx_materials) end
---@param include_statics boolean? true
---@param include_particle_fx_materials boolean? false
function CellFactory_GetAllSolids(include_statics, include_particle_fx_materials) end
---@param material_id number
function CellFactory_GetTags(material_id) end
---@return number x, number y
function GameGetCameraPos() end
---@param x number
---@param y number
function GameSetCameraPos(x, y) end
---@param is_free boolean
function GameSetCameraFree(is_free) end
---Returns the camera rectangle. This may not be 100% pixel perfect with regards to what you see on the screen. 'x','y' = top left corner of the rectangle.
---@return number x, number y, number w, number h
function GameGetCameraBounds() end
---@param entity_id number
function GameRegenItemAction(entity_id) end
---@param entity_id number
function GameRegenItemActionsInContainer(entity_id) end
---@param entity_id number
function GameRegenItemActionsInPlayer(entity_id) end
---@param inventory_owner_entity_id number
---@param item_entity_id number
function GameKillInventoryItem(inventory_owner_entity_id, item_entity_id) end
---@param who_picks_up_entity_id number
---@param item_entity_id number
---@param do_pick_up_effects boolean? true
function GamePickUpInventoryItem(who_picks_up_entity_id, item_entity_id, do_pick_up_effects) end
---Returns all the inventory items that entity_id has
---@param entity_id number
---@return table<number> | nil List of item entity IDs or nil if not found
function GameGetAllInventoryItems(entity_id) end
---@param entity_id number
function GameDropAllItems(entity_id) end
---@param entity_id number
function GameDropPlayerInventoryItems(entity_id) end
---@param entity_id number
function GameDestroyInventoryItems(entity_id) end
---@return boolean
function GameIsInventoryOpen() end
function GameTriggerGameOver() end
---@param materials_filename string
---@param colors_filename string
---@param x number
---@param y number
---@param background_file string
---@param skip_biome_checks boolean? false
---@param skip_edge_textures boolean? false
---@param color_to_material_table table<string, string>? {}
---@param background_z_index number? 50
---@param load_even_if_duplicate boolean? false
function LoadPixelScene(materials_filename, colors_filename, x, y, background_file, skip_biome_checks, skip_edge_textures, color_to_material_table, background_z_index, load_even_if_duplicate) end
---@param background_file string
---@param x number
---@param y number
---@param background_z_index number? 40.0
---@param check_biome_corners boolean? false
function LoadBackgroundSprite(background_file, x, y, background_z_index, check_biome_corners) end
---NOTE! Removes the pixel scene sprite if the name and position match. Will return true if manages the find and destroy the background sprite
---@param background_file string
---@param x number
---@param y number
---@return boolean
function RemovePixelSceneBackgroundSprite(background_file, x, y) end
---NOTE! Removes pixel scene background sprites inside the given area.
---@param x_min number
---@param y_min number
---@param x_max number
---@param y_max number
function RemovePixelSceneBackgroundSprites(x_min, y_min, x_max, y_max) end
---@param material_name string
---@param x number
---@param y number
---@param how_many number
---@param xvel number
---@param yvel number
---@param just_visual boolean
---@param draw_as_long boolean? false
---@param randomize_velocity boolean? true
function GameCreateParticle(material_name, x, y, how_many, xvel, yvel, just_visual, draw_as_long, randomize_velocity) end
---Create a cosmetic particle
---@param material_name string
---@param x number
---@param y number
---@param how_many number
---@param xvel number
---@param yvel number
---@param color number? 0
---@param lifetime_min number? 5
---@param lifetime_max number? 10
---@param force_create boolean? true
---@param draw_front boolean? false
---@param collide_with_grid boolean? true
---@param randomize_velocity boolean? true
---@param gravity_x number? 0
---@param gravity_y number? 100
function GameCreateCosmeticParticle( material_name, x, y, how_many, xvel, yvel, color, lifetime_min, lifetime_max, force_create, draw_front, collide_with_grid, randomize_velocity, gravity_x, gravity_y )end
---@param filename string
---@param x number
---@param y number
---@param centered boolean? true
---@param sprite_offset_x number? 0
---@param sprite_offset_y number? 0
---@param frames number? 1
---@param emissive boolean? false
function GameCreateSpriteForXFrames(filename, x, y, centered, sprite_offset_x, sprite_offset_y, frames, emissive) end
---'shooter_entity' can be 0. Warning: If 'projectile_entity' has PhysicsBodyComponent and ItemComponent, components without the "enabled_in_world" tag will be disabled, as if the entity was thrown by player.
---@param shooter_entity number
---@param x number
---@param y number
---@param target_x number
---@param target_y number
---@param projectile_entity number
---@param send_message boolean? true
---@param verlet_parent_entity number? 0
function GameShootProjectile(shooter_entity, x, y, target_x, target_y, projectile_entity, send_message, verlet_parent_entity) end
---@param entity number
---@param amount number
---@alias damage_type '"DAMAGE_MELEE"' | '"DAMAGE_PROJECTILE"' | '"DAMAGE_EXPLOSION"' | '"DAMAGE_BITE"' | '"DAMAGE_FIRE"' | '"DAMAGE_MATERIAL"' | '"DAMAGE_FALL"' | '"DAMAGE_ELECTRICITY"' | '"DAMAGE_DROWNING"' | '"DAMAGE_PHYSICS_BODY_DAMAGED"' | '"DAMAGE_DRILL"' | '"DAMAGE_SLICE"' | '"DAMAGE_ICE"' | '"DAMAGE_HEALING"' | '"DAMAGE_PHYSICS_HIT"' | '"DAMAGE_RADIOACTIVE"' | '"DAMAGE_POISON"' | '"DAMAGE_MATERIAL_WITH_FLASH"' | '"DAMAGE_OVEREATING"' | '"DAMAGE_CURSE"' | '"DAMAGE_HOLY"'
---@param damage_type damage_type
---@param description string
---@alias ragdoll_fx '"NONE"' | '"NORMAL"' | '"BLOOD_EXPLOSION"' | '"BLOOD_SPRAY"' | '"FROZEN"' | '"CONVERT_TO_MATERIAL"' | '"CUSTOM_RAGDOLL_ENTITY"' | '"DISINTEGRATED"' | '"NO_RAGDOLL_FILE"' | '"PLAYER_RAGDOLL_CAMERA"'        
---@param ragdoll_fx ragdoll_fx
---@param impulse_x number
---@param impulse_y number
---@param entity_who_is_responsible number? 0
---@param world_pos_x number? entity_x
---@param world_pos_y number? entity_y
---@param knockback_force number? 0
function EntityInflictDamage(entity, amount, damage_type, description, ragdoll_fx, impulse_x, impulse_y, entity_who_is_responsible, world_pos_x, world_pos_y, knockback_force) end
---Has the same effects that would occur if 'entity' eats 'amount' number of cells of 'material_type' from the game world. Use this instead of directly modifying IngestionComponent values, if possible. Might not work with non-player entities. Use CellFactory_GetType() to convert a material name to material type.
---@param entity number
---@param material_type number
---@param amount number
function EntityIngestMaterial(entity, material_type, amount) end
---@param entity number
---@param status_type_id string
function EntityRemoveIngestionStatusEffect(entity, status_type_id) end
---@param entity number
---@param status_type_id string
---@param status_cooldown number? 0
function EntityRemoveStainStatusEffect(entity, status_type_id, status_cooldown) end
---Adds random visible stains of 'material_type' to entity. 'amount' controls the number of stain cells added. Does nothing if 'entity' doesn't have a SpriteStainsComponent. Use CellFactory_GetType() to convert a material name to material type.
---@param entity number
---@param material_type number
---@param amount number
function EntityAddRandomStains(entity, material_type, amount) end
---Modifies DamageModelComponents materials_that_damage and materials_how_much_damage variables (and their parsed out data structures)
---@param entity number
---@param material_name string
---@param damage number
function EntitySetDamageFromMaterial(entity, material_name, damage) end
---Immediately refreshes the given SpriteComponent. Might be useful with text sprites if you want them to update more often than once a second.
---@param entity number
---@param sprite_component number
function EntityRefreshSprite(entity, sprite_component) end
---Returns the capacity of a wand entity, or 0 if 'entity' doesnt exist.
---@param entity number
---@return number
function EntityGetWandCapacity(entity) end
---Returns the position of a hot spot defined by a HotspotComponent. If 'transformed' is true, will return the position in world coordinates, transformed using the entity's transform.
---@param entity number
---@param hotspot_tag string
---@param transformed boolean
---@param include_disabled_components boolean? false
---@return number x, number y
function EntityGetHotspot(entity, hotspot_tag, transformed, include_disabled_components) end
---Plays animation. Follow up animation ('followup_name') is applied only if 'followup_priority' is given.
---@param entity_id number
---@param name string
---@param priority number
---@param followup_name string? ""
---@param followup_priority number? 0
function GamePlayAnimation(entity_id, name, priority, followup_name, followup_priority) end
---@param entity_id number
---@return number x, number y
function GameGetVelocityCompVelocity(entity_id) end
---@param entity_id number
---@param game_effect_name string
---@return number component_id
function GameGetGameEffect(entity_id, game_effect_name) end
---@param entity_id number
---@param game_effect_name string
---@return number
function GameGetGameEffectCount(entity_id, game_effect_name) end
---@param entity_id number
---@param game_effect_entity_file string
---@return number effect_entity_id
function LoadGameEffectEntityTo(entity_id, game_effect_entity_file) end
---@param entity_id number
---@param game_effect_name string
---@param always_load_new boolean
---@return number effect_component_id, number effect_entity_id
function GetGameEffectLoadTo(entity_id, game_effect_name, always_load_new) end
---Adds the entity to the polymorph random table
---@param entity_xml string
---@param is_rare boolean? false
---@param add_only_one_copy boolean? true
function PolymorphTableAddEntity(entity_xml, is_rare, add_only_one_copy) end
---Removes the entity from the polymorph random table
---@param entity_xml string
---@param from_common_table boolean? true
---@param from_rare_table boolean? true
function PolymorphTableRemoveEntity(entity_xml, from_common_table, from_rare_table) end
---Returns a list of all the entities in the polymorph random table
---@param rare_table boolean? false
---@return table<string> List of entities in the polymorph random table
function PolymorphTableGet(rare_table) end
---Set a list of all entities sas the polymorph random table
---@param table_of_xml_entities table<string>
---@param rare_table boolean? false
function PolymorphTableSet(table_of_xml_entities, rare_table ) end
---@param x number
---@param y number
function SetPlayerSpawnLocation(x, y) end
---@param action_id string
function UnlockItem(action_id) end
---@param entity_id number
---@return number
function GameGetPotionColorUint(entity_id) end
---Returns the centroid of first enabled HitboxComponent found in entity, the position of the entity if no hitbox is found, or nil if the entity does not exist. All returned positions are in world coordinates.
---@param entity_id number
---@return number (x, number)|nil y
function EntityGetFirstHitboxCenter(entity_id) end
---Does a raytrace that stops on any cell it hits.
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return boolean did_hit, number hit_x, number hit_y
function Raytrace(x1, y1, x2, y2) end
---Does a raytrace that stops on any cell that is not fluid, gas (yes, technically gas is a fluid), or fire.
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return boolean did_hit, number hit_x, number hit_y
function RaytraceSurfaces(x1, y1, x2, y2) end
---Does a raytrace that stops on any cell that is not gas or fire.
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return boolean did_hit, number hit_x, number hit_y
function RaytraceSurfacesAndLiquiform(x1, y1, x2, y2) end
---Does a raytrace that stops on any cell a character can stand on.
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return boolean did_hit, number hit_x, number hit_y
function RaytracePlatforms(x1, y1, x2, y2) end
---@param ideal_pos_x number
---@param idea_pos_y number
---@param velocity_x number
---@param velocity_y number
---@param body_radius number
---@return number x, number y
function FindFreePositionForBody(ideal_pos_x, idea_pos_y, velocity_x, velocity_y, body_radius) end
---@param pos_x number
---@param pos_y number
---@param ray_length number
---@param ray_count number
---@return boolean found_normal, number normal_x, number normal_y, number approximate_distance_from_surface
function GetSurfaceNormal(pos_x, pos_y, ray_length, ray_count) end
---Returns the approximate sky visibility (sky ambient level) at a point as a number between 0 and 1. The value is not affected by weather or time of day. This value is used by the post fx shader after some temporal and spatial smoothing.
---@param pos_x number
---@param pos_y number
---@return number sky
function GameGetSkyVisibility(pos_x, pos_y) end
---Returns an integer between 0 and 255. Larger value means more coverage. Returns -1 if query is outside the bounds of the fog of war grid. For performance reasons consider using the components that manipulate fog of war.
---@param pos_x number
---@param pos_y number
---@return number fog_of_war
function GameGetFogOfWar(pos_x, pos_y) end
---Returns an integer between 0 and 255. Larger value means more coverage. Returns -1 if query is outside the bounds of the fog of war grid. The value is bilinearly filtered using four samples around 'pos'. For performance reasons consider using the components that manipulate fog of war.
---@param pos_x number
---@param pos_y number
---@return number fog_of_war
function GameGetFogOfWarBilinear(pos_x, pos_y) end
---'fog_of_war' should be between 0 and 255 (but will be clamped to the correct range with a int32->uint8 cast). Larger value means more coverage. Returns a boolean indicating whether or not the position was inside the bounds of the fog of war grid. For performance reasons consider using the components that manipulate fog of war.
---@param pos_x number
---@param pos_y number
---@param fog_of_war number
---@return boolean pos_valid
function GameSetFogOfWar(pos_x, pos_y, fog_of_war) end
---Returns true if the area inside the bounding box defined by the parameters has been streamed in and no pixel scenes are loading in the area.
---@param min_x number
---@param min_y number
---@param max_x number
---@param max_y number
---@return boolean
function DoesWorldExistAt(min_x, min_y, max_x, max_y) end
---@param herd_name string
---@return number
function StringToHerdId(herd_name) end
---@param herd_id number
---@return string string
function HerdIdToString(herd_id) end
---@param herd_id_a number
---@param herd_id_b number
---@return number
function GetHerdRelation(herd_id_a, herd_id_b) end
---@param entity_a number
---@param entity_b number
---@return number
function EntityGetHerdRelation(entity_a, entity_b) end
---does not spam errors, but returns 0 if anything fails
---@param entity_a number
---@param entity_b number
---@return number
function EntityGetHerdRelationSafe(entity_a, entity_b) end
---Deprecated, use GenomeStringToHerdID() and ComponentSetValue2() instead.
---@param entity_id number
---@param new_herd_id string
function GenomeSetHerdId(entity_id, new_herd_id) end
---NOTE: entity_id might be NULL, but pos_x and pos_y could still be valid.
---@param pos_x number
---@param pos_y number
---@return number entity_id, number pos_x, number pos_y
function EntityGetClosestWormAttractor(pos_x, pos_y) end
---NOTE: entity_id might be NULL, but pos_x and pos_y could still be valid
---@param pos_x number
---@param pos_y number
---@return number entity_id, number pos_x, number pos_y, number radius
function EntityGetClosestWormDetractor(pos_x, pos_y) end
---@param log_line string
function GamePrint(log_line) end
---@param title string
---@param description string? ""
---@param ui_custom_decoration_file string? ""
function GamePrintImportant(title, description, ui_custom_decoration_file) end
---@return number x, number y
function DEBUG_GetMouseWorld() end
---@param x number
---@param y number
---@param message string? ""
---@param color_r number? 1
---@param color_g number? 0
---@param color_b number? 0
function DEBUG_MARK(x, y, message, color_r, color_g, color_b) end
---@return number
function GameGetFrameNum() end
---@return number
function GameGetRealWorldTimeSinceStarted() end

---Debugish function - returns if a key is down, does not depend on state. E.g. player could be in menus or inputting text. See data/scripts/debug/keycodes.lua for the constants
---@param key_code number
---@return boolean
function InputIsKeyDown(key_code) end
---Debugish function - returns if a key is down this frame, does not depend on state. E.g. player could be in menus or inputting text. See data/scripts/debug/keycodes.lua for the constants
---@param key_code number
---@return boolean
function InputIsKeyJustDown(key_code) end
---Debugish function - returns if a key is up this frame, does not depend on state. E.g. player could be in menus or inputting text. See data/scripts/debug/keycodes.lua for the constants
---@param key_code number
---@return boolean
function InputIsKeyJustUp(key_code) end
---Debugish function - returns raw x, y coordinates of the mouse on screen
---@return number x, number y
function InputGetMousePosOnScreen() end
---Debugish function - returns if mouse button is down. Does not depend on state. E.g. player could be in menus. See data/scripts/debug/keycodes.lua for the constants
---@param mouse_button number
---@return boolean
function InputIsMouseButtonDown(mouse_button) end
---Debugish function - returns if mouse button is down. Does not depend on state. E.g. player could be in menus. See data/scripts/debug/keycodes.lua for the constants
---@param mouse_button number
---@return boolean
function InputIsMouseButtonJustDown(mouse_button) end
---Debugish function - returns if mouse button is down. Does not depend on state. E.g. player could be in menus. See data/scripts/debug/keycodes.lua for the constants
---@param mouse_button number
---@return boolean
function InputIsMouseButtonJustUp(mouse_button) end
---Debugish function - returns if 'joystick' button is down. Does not depend on state. E.g. player could be in menus. See data/scripts/debug/keycodes.lua for the constants
---@param joystick_index number
---@param joystick_button number
---@return boolean
function InputIsJoystickButtonDown(joystick_index, joystick_button) end
---Debugish function - returns if 'joystick' button is just down. Does not depend on state. E.g. player could be in menus. See data/scripts/debug/keycodes.lua for the constants
---@param joystick_index number
---@param joystick_button number
---@return boolean
function InputIsJoystickButtonJustDown(joystick_index, joystick_button) end
---Debugish function - returns analog 'joystick' button value (0-1). analog_button_index 0 = left trigger, 1 = right trigger Does not depend on state. E.g. player could be in menus. See data/scripts/debug/keycodes.lua for the constants
---@param joystick_index number
---@param analog_button_index number
---@return number
function InputGetJoystickAnalogButton(joystick_index, analog_button_index) end
---Debugish function - returns true if 'joystick' at that index is connected. Does not depend on state. E.g. player could be in menus. See data/scripts/debug/keycodes.lua for the constants
---@param joystick_index number
---@return boolean
function InputIsJoystickConnected(joystick_index) end
---Debugish function - returns analog stick positions (-1,+1). stick_id 0 = left, 1 = right, Does not depend on state. E.g. player could be in menus. See data/scripts/debug/keycodes.lua for the constants
---@param joystick_index number
---@param stick_id number
---@return number x, number y
function InputGetJoystickAnalogStick(joystick_index, stick_id) end


---@param entity_id number
---@return boolean
function IsPlayer(entity_id) end
---@param entity_id number
---@return boolean
function IsInvisible(entity_id) end
---@return boolean
function GameIsDailyRun() end
---@return boolean
function GameIsDailyRunOrDailyPracticeRun() end
---@return boolean
function GameIsModeFullyDeterministic() end
---@param key string
---@param value string
function GlobalsSetValue(key, value) end
---@param key string
---@param default_value string? ""
function GlobalsGetValue(key, default_value) end
---@param key string
---@return string string
function MagicNumbersGetValue(key) end
---@param new_seed number
function SetWorldSeed(new_seed) end
---@param key string
---@return string string
function SessionNumbersGetValue(key) end
---@param key string
---@param value string
function SessionNumbersSetValue(key, value) end
function SessionNumbersSave() end
function AutosaveDisable() end
---@param key string
---@return string|nil string
function StatsGetValue(key) end
---@param key string
---@return string string
function StatsGlobalGetValue(key) end
---@param key string
---@return string string
function StatsBiomeGetValue(key) end
function StatsBiomeReset() end
---@param killed_entity_id number? 0
function StatsLogPlayerKill(killed_entity_id) end
---@param action_id string
---@param x number? 0
---@param y number? 0
---@return number entity_id
function CreateItemActionEntity(action_id, x, y) end
---@param x number
---@param y number
---@param max_level number
---@param type number
---@param i number? 0
---@return string string
function GetRandomActionWithType(x, y, max_level, type, i) end
---@param x number
---@param y number
---@param max_level number
---@param i number? 0
---@return string string
function GetRandomAction(x, y, max_level, i) end
---@return number year, number month, number day, number hour, number minute, number second
function GameGetDateAndTimeUTC() end
---@return number year, number month, number day, number hour, number minute, number second
function GameGetDateAndTimeLocal() end
---@param num_particles number
---@param width_outside_camera number
---@param material_name string
---@param velocity_min number
---@param velocity_max number
---@param gravity number
---@param droplets_bounce boolean
---@param draw_as_long boolean
function GameEmitRainParticles(num_particles, width_outside_camera, material_name, velocity_min, velocity_max, gravity, droplets_bounce, draw_as_long) end
---Each beam adds a little overhead to things like chunk creation, so please call this sparingly.
---@param x number
---@param y_min number
---@param y_max number
---@param radius number
---@param edge_darkening_width number
function GameCutThroughWorldVertical(x, y_min, y_max, radius, edge_darkening_width) end
---This is available if BIOME_MAP in magic_numbers.xml points to a lua file, in the context of that file.
---@param width number
---@param height number
function BiomeMapSetSize(width, height) end
---if BIOME_MAP in magic_numbers.xml points to a lua file returns that context, if not will return the biome_map size
---@return number width, number height
function BiomeMapGetSize() end
---This is available if BIOME_MAP in magic_numbers.xml points to a lua file, in the context of that file.
---@param x number
---@param y number
---@param color_int number
function BiomeMapSetPixel(x, y, color_int) end
---This is available if BIOME_MAP in magic_numbers.xml points to a lua file, in the context of that file.
---@param x number
---@param y number
---@return number color
function BiomeMapGetPixel(x, y) end
---Swaps red and blue channels of 'color'. This can be used make sense of the BiomeMapGetPixel() return values. E.g. if( BiomeMapGetPixel( x, y ) == BiomeMapConvertPixelFromUintToInt( 0xFF36D517 ) ) then print('hills') end 
---@param color number
---@return number
function BiomeMapConvertPixelFromUintToInt(color) end
---This is available if BIOME_MAP in magic_numbers.xml points to a lua file, in the context of that file.
---@param x number
---@param y number
---@param image_filename string
function BiomeMapLoadImage(x, y, image_filename) end
---This is available if BIOME_MAP in magic_numbers.xml points to a lua file, in the context of that file.
---@param x number
---@param y number
---@param image_filename string
---@param image_x number
---@param image_y number
---@param image_w number
---@param image_h number
function BiomeMapLoadImageCropped(x, y, image_filename, image_x, image_y, image_w, image_h) end
---@param x number
---@param y number
---@return number
function BiomeMapGetVerticalPositionInsideBiome(x, y) end
---@param x number? camera_x
---@param y number? camera_y
---@return string name
function BiomeMapGetName(x, y) end
---@param x number
---@param y number
function SetRandomSeed(x, y) end
---This is kinda messy. If given 0 arguments, returns number between 0.0 and 1.0. If given 1 arguments, returns int between 0 and 'a'. If given 2 arguments returns int between 'a' and 'b'.
---@param a number? optional
---@param b number? optional
---@return number|number
function Random(a, b) end
---This is kinda messy. If given 0 arguments, returns number between 0.0 and 1.0. If given 1 arguments, returns number between 0.0 and 'a'. If given 2 arguments returns number between 'a' and 'b'.
---@param min number? optional
---@param max number? optional
---@return number
function Randomf(min, max) end
---@param min number
---@param max number
---@param mean number
---@param sharpness number? 1
---@param baseline number? 0.005
---@return number
function RandomDistribution(min, max, mean, sharpness, baseline) end
---@param min number
---@param max number
---@param mean number
---@param sharpness number? 1
---@param baseline number? 0.005
---@return number
function RandomDistributionf(min, max, mean, sharpness, baseline) end
---This is kinda messy. If given 2 arguments, returns number between 0.0 and 1.0. If given 3 arguments, returns int between 0 and 'a'. If given 4 arguments returns number between 'a' and 'b'.
---@param x number
---@param y number
---@param a number? optional
---@param b number? optional
---@return number|number
function ProceduralRandom(x, y, a, b) end
---This is kinda messy. If given 2 arguments, returns number between 0.0 and 1.0. If given 3 arguments, returns a number between 0 and 'a'. If given 4 arguments returns a number between 'a' and 'b'.
---@param x number
---@param y number
---@param a number? optional
---@param b number? optional
---@return number
function ProceduralRandomf(x, y, a, b) end
---This is kinda messy. If given 2 arguments, returns 0 or 1. If given 3 arguments, returns an int between 0 and 'a'. If given 4 arguments returns an int between 'a' and 'b'.
---@param x number
---@param y number
---@param a number? optional
---@param b number? optional
---@return number
function ProceduralRandomi(x, y, a, b) end
---Does not work with PhysicsBody2Component. Returns the id of the created physics body.
---@param entity_id number
---@param image_file string
---@param material string? ""
---@param offset_x number? 0
---@param offset_y number? 0
---@param centered boolean? false
---@param is_circle boolean? false
---@param material_image_file string? ""
---@param use_image_as_colors boolean? true
---@return number int_body_id
function PhysicsAddBodyImage(entity_id, image_file, material, offset_x, offset_y, centered, is_circle, material_image_file, use_image_as_colors) end
---Does not work with PhysicsBody2Component. Returns the id of the created physics body.
---@param entity_id number
---@param material string
---@param offset_x number
---@param offset_y number
---@param width number
---@param height number
---@param centered boolean? false
---@return number|nil
function PhysicsAddBodyCreateBox(entity_id, material, offset_x, offset_y, width, height, centered) end
---Does not work with PhysicsBody2Component. Returns the id of the created joint.
---@param entity_id number
---@param body_id0 number
---@param body_id1 number
---@param offset_x number
---@param offset_y number
---@param joint_type string
---@return number|nil
function PhysicsAddJoint(entity_id, body_id0, body_id1, offset_x, offset_y, joint_type) end
---@param entity_id number
---@param force_x number
---@param force_y number
function PhysicsApplyForce(entity_id, force_x, force_y) end
---@param entity_id number
---@param torque number
function PhysicsApplyTorque(entity_id, torque) end
---@param entity_id number
---@param component_id number
---@param torque number
function PhysicsApplyTorqueToComponent(entity_id, component_id, torque) end
---Applies a force calculated by 'calculate_force_for_body_fn' to all bodies in an area. 'calculate_force_for_body_fn' should be a lua function with the following signature: function( body_entity:int, body_mass:number, body_x:number, body_y:number, body_vel_x:number, body_vel_y:number, body_vel_angular:number ) -> force_world_pos_x:number,force_world_pos_y:number,force_x:number,force_y:number,force_angular:number
---@param calculate_force_for_body_fn function
---@param ignore_this_entity number
---@param area_min_x number
---@param area_min_y number
---@param area_max_x number
---@param area_max_y number
function PhysicsApplyForceOnArea(calculate_force_for_body_fn, ignore_this_entity, area_min_x, area_min_y, area_max_x, area_max_y) end
---@param world_pos_min_x number
---@param world_pos_min_y number
---@param world_pos_max_x number
---@param world_pos_max_y number
function PhysicsRemoveJoints(world_pos_min_x, world_pos_min_y, world_pos_max_x, world_pos_max_y) end
---@param entity_id number
---@param is_static boolean
function PhysicsSetStatic(entity_id, is_static) end
---@param entity_id number
---@param component_id number
---@return number vel_x, number vel_y
function PhysicsGetComponentVelocity(entity_id, component_id) end
---@param entity_id number
---@param component_id number
---@return number vel
function PhysicsGetComponentAngularVelocity(entity_id, component_id) end

--[[
	Add these:
	PhysicsComponentGetTransform( component_id:int ) -> x:number, y:number, angle:number, vel_x:number, vel_y:number, angular_vel:number [NOTE! results are Box2D units. Velocities need to converted with PhysicsVecToGameVec.]
	PhysicsComponentSetTransform( component_id:int, x:number, y:number, angle:number, vel_x:number, vel_y:number, angular_vel:number )
	PhysicsBodyIDGetFromEntity( entity_id:int, component_id:int = 0 ) -> {physics_body_id} [NOTE! If component_id is given, will return all the bodies linked to that component. If component_id is not given, will return all the bodies linked to the entity (with joints or through components).]
	PhysicsBodyIDQueryBodies( world_pos_min_x:number, world_pos_min_y:number, world_pos_max_x:number, world_pos_max_y:number, include_static_bodies:boolean = false, are_these_box2d_units:boolean = false ) -> {physics_body_id} [NOTE! returns an array of physics_body_id(s) of all the box2d bodies in the given area. The default coordinates are in game world space. If passing a sixth argument with true, we will assume the coordinates are in box2d units. ]
	PhysicsBodyIDGetTransform( physics_body_id:int ) -> nil | x:number, y:number, angle:number, vel_x:number, vel_y:number, angular_vel:number [NOTE! returns nil, if body was not found. Results are Box2D units. Velocities need to converted with PhysicsVecToGameVec.]
	PhysicsBodyIDSetTransform( physics_body_id:int, x:number, y:number, angle:number, vel_x:number, vel_y:number, angular_vel:number )
	PhysicsBodyIDApplyForce( physics_body_id:int, force_x:number, force_y:number, world_pos_x:number = nil, world_pos_y:number = nil ) [NOTE! force is in box2d units. world_pos_ is game world coordinates. If world_pos is not given will use the objects center as the position of where the force will be applied.], 
	PhysicsBodyIDApplyTorque( physics_body_id:int, torque:number )
	PhysicsBodyIDGetWorldCenter( physics_body_id:int ) -> x:number, y:number [NOTE! returns nil, if body was not found. Results are Box2D units. ]
	PhysicsBodyIDGetDamping( physics_body_id:int ) -> linear_damping:number, angular_damping:number [NOTE! returns nil, if body was not found. Results are 0-1. ]
	PhysicsBodyIDSetDamping( physics_body_id:int, linear_damping:number, angular_damping:number = nil ) [NOTE! if angular_damping is given will set it as well.] 
	PhysicsBodyIDGetGravityScale( physics_body_id:int ) -> gravity_scale:number [NOTE! returns nil, if body was not found. ]
	PhysicsBodyIDSetGravityScale( physics_body_id:int, gravity_scale:number ) 
	PhysicsBodyIDGetBodyAABB( physics_body_id:int ) -> nil 
]]

---NOTE! results are Box2D units. Velocities need to converted with PhysicsVecToGameVec.
---@param component_id number
---@return number x, number y, number angle, number vel_x, number vel_y, number angular_vel
function PhysicsComponentGetTransform(component_id) end
---@param component_id number
---@param x number
---@param y number
---@param angle number
---@param vel_x number
---@param vel_y number
---@param angular_vel number
function PhysicsComponentSetTransform(component_id, x, y, angle, vel_x, vel_y, angular_vel) end
---NOTE! If component_id is given, will return all the bodies linked to that component. If component_id is not given, will return all the bodies linked to the entity (with joints or through components).
---@param entity_id number
---@param component_id number? 0
---@return table<number> physics_body_id
function PhysicsBodyIDGetFromEntity(entity_id, component_id) end
---NOTE! returns an array of physics_body_id(s) of all the box2d bodies in the given area. The default coordinates are in game world space. If passing a sixth argument with true, we will assume the coordinates are in box2d units.
---@param world_pos_min_x number
---@param world_pos_min_y number
---@param world_pos_max_x number
---@param world_pos_max_y number
---@param include_static_bodies boolean? false
---@param are_these_box2d_units boolean? false
---@return table<number> physics_body_id
function PhysicsBodyIDQueryBodies(world_pos_min_x, world_pos_min_y, world_pos_max_x, world_pos_max_y, include_static_bodies, are_these_box2d_units) end
---NOTE! returns nil, if body was not found. Results are Box2D units. Velocities need to converted with PhysicsVecToGameVec.
---@param physics_body_id number
---@return number x, number y, number angle, number vel_x, number vel_y, number angular_vel
function PhysicsBodyIDGetTransform(physics_body_id) end
---@param physics_body_id number
---@param x number
---@param y number
---@param angle number
---@param vel_x number
---@param vel_y number
---@param angular_vel number
function PhysicsBodyIDSetTransform(physics_body_id, x, y, angle, vel_x, vel_y, angular_vel) end
---NOTE! force is in box2d units. world_pos_ is game world coordinates. If world_pos is not given will use the objects center as the position of where the force will be applied.
---@param physics_body_id number
---@param force_x number
---@param force_y number
---@param world_pos_x number? nil
---@param world_pos_y number? nil
function PhysicsBodyIDApplyForce(physics_body_id, force_x, force_y, world_pos_x, world_pos_y) end
---@param physics_body_id number
---@param torque number
function PhysicsBodyIDApplyTorque(physics_body_id, torque) end
---NOTE! returns nil, if body was not found. Results are Box2D units.
---@param physics_body_id number
---@return number x, number y
function PhysicsBodyIDGetWorldCenter(physics_body_id) end
---NOTE! returns nil, if body was not found. Results are 0-1.
---@param physics_body_id number
---@return number linear_damping, number angular_damping
function PhysicsBodyIDGetDamping(physics_body_id) end
---@param physics_body_id number
---@param linear_damping number
---@param angular_damping number? nil
function PhysicsBodyIDSetDamping(physics_body_id, linear_damping, angular_damping) end
---NOTE! returns nil, if body was not found.
---@param physics_body_id number
---@return number gravity_scale
function PhysicsBodyIDGetGravityScale(physics_body_id) end
---@param physics_body_id number
---@param gravity_scale number
function PhysicsBodyIDSetGravityScale(physics_body_id, gravity_scale) end
---NOTE! returns nil, if body was not found.
---@param physics_body_id number
---@return number min_x, number min_y, number max_x, number max_y
function PhysicsBodyIDGetBodyAABB(physics_body_id) end


---@param entity_id number
function PhysicsBody2InitFromComponents(entity_id) end
---@param x number
---@param y number? 0
---@return number x, number y
function PhysicsPosToGamePos(x, y) end
---@param x number
---@param y number? 0
---@return number x, number y
function GamePosToPhysicsPos(x, y) end
---@param x number
---@param y number? 0
---@return number x, number y
function PhysicsVecToGameVec(x, y) end
---@param x number
---@param y number? 0
---@return number x, number y
function GameVecToPhysicsVec(x, y) end
---@param world_pos_x number
---@param world_pos_y number
---@param image_filename string
---@param max_durability number? 2147483647
function LooseChunk(world_pos_x, world_pos_y, image_filename, max_durability) end

---@param world_pos_x number
---@param world_pos_y number
---@param radius number
---@param force number
function VerletApplyCircularForce(world_pos_x, world_pos_y, radius, force) end
---@param world_pos_x number
---@param world_pos_y number
---@param radius number
---@param force_x number
---@param force_y number
function VerletApplyDirectionalForce(world_pos_x, world_pos_y, radius, force_x, force_y) end

---@param key string
---@return boolean bool_is_new
function AddFlagPersistent(key) end
---@param key string
function RemoveFlagPersistent(key) end
---@param key string
---@return boolean
function HasFlagPersistent(key) end
---@param flag string
function GameAddFlagRun(flag) end
---@param flag string
function GameRemoveFlagRun(flag) end
---@param flag string
---@return boolean
function GameHasFlagRun(flag) end
---@param event_path string
---@param can_be_faded boolean
---@param x number
---@param y number
function GameTriggerMusicEvent(event_path, can_be_faded, x, y) end
---@param name string
function GameTriggerMusicCue(name) end
---@param relative_fade_speed number 1
function GameTriggerMusicFadeOutAndDequeueAll(relative_fade_speed) end
---@param bank_filename string
---@param event_path string
---@param x number
---@param y number
function GamePlaySound(bank_filename, event_path, x, y) end
---Plays a sound through all AudioComponents with matching sound in 'entity_id'.
---@param entity_id number
---@param event_name string
function GameEntityPlaySound(entity_id, event_name) end
---Plays a sound loop through an AudioLoopComponent tagged with 'component_tag' in 'entity'. 'intensity' & 'intensity2' affect the intensity parameters passed to the audio event. Must be called every frame when the sound should play.
---@param entity number
---@param component_tag string
---@param intensity number
---@param intensity2 number? 0
function GameEntityPlaySoundLoop(entity, component_tag, intensity, intensity2) end
---Can be used to pass custom parameters to the post_final shader, or override values set by the game code. The shader uniform called 'name' will be set to the latest given values on this and following frames.
---@param parameter_name string
---@param x number
---@param y number
---@param z number
---@param w number
function GameSetPostFxParameter(parameter_name, x, y, z, w) end
---Will remove a post_final shader parameter value binding set via game GameSetPostFxParameter().
---@param parameter_name string
function GameUnsetPostFxParameter(parameter_name) end

---Can be used to pass 2D textures to the post_final shader. The shader uniform called 'parameter_name' will be set to the latest given value on this and following frames. 'texture_filename' can either point to a file, or a virtual file created using the ModImage API. If 'update_texture' is true, the texture will be re-uploaded to the GPU (could be useful with dynamic textures, but will incur a heavy performance hit with textures that are loaded from the disk). Accepted values for 'filtering_mode' and 'wrapping_mode' can be found in 'data/libs/utilities.lua'. Each call with a unique 'parameter_name' will create a separate texture while the parameter is in use, so this should be used with some care. While it's possible to change 'texture_filename' on the fly, if texture size changed, this causes destruction of the old texture and allocating a new one, which can be quite slow.
---@param parameter_name string
---@param texture_filename string
---@param filtering_mode number
---@param wrapping_mode number
---@param update_texture boolean? false
function GameSetPostFxTextureParameter(parameter_name, texture_filename, filtering_mode, wrapping_mode, update_texture) end
---Will remove a post_final shader parameter value binding set via game GameSetPostFxTextureParameter().
---@param parameter_name string
function GameUnsetPostFxTextureParameter(parameter_name) end

---@param text_or_key string
---@return string string
function GameTextGetTranslatedOrNot(text_or_key) end
---@param key string
---@param param0 string? ""
---@param param1 string? ""
---@param param2 string? ""
---@return string string
function GameTextGet(key, param0, param1, param2) end
---@return userdata gui
function GuiCreate() end
---@param gui userdata
function GuiDestroy(gui) end
---@param gui userdata
function GuiStartFrame(gui) end
---Sets the options that apply to widgets during this frame. For 'option' use the values in the GUI_OPTION table in "data/scripts/lib/utilities.lua". Values from consecutive calls will be combined. For example calling this with the values GUI_OPTION.Align_Left and GUI_OPTION.GamepadDefaultWidget will set both options for the next widget. The options will be cleared on next call to GuiStartFrame().
---@param gui userdata
---@param option number
function GuiOptionsAdd(gui, option) end
---Sets the options that apply to widgets during this frame. For 'option' use the values in the GUI_OPTION table in "data/scripts/lib/utilities.lua". Values from consecutive calls will be combined. For example calling this with the values GUI_OPTION.Align_Left and GUI_OPTION.GamepadDefaultWidget will set both options for the next widget. The options will be cleared on next call to GuiStartFrame().
---@param gui userdata
---@param option number
function GuiOptionsRemove(gui, option) end
---Clears the options that apply to widgets during this frame.
---@param gui userdata
function GuiOptionsClear(gui) end
---Sets the options that apply to the next widget during this frame. For 'option' use the values in the GUI_OPTION table in "data/scripts/lib/utilities.lua". Values from consecutive calls will be combined. For example calling this with the values GUI_OPTION.Align_Left and GUI_OPTION.GamepadDefaultWidget will set both options for the next widget.
---@param gui userdata
---@param option number
function GuiOptionsAddForNextWidget(gui, option) end
---Sets the color of the next widget during this frame. Color components should be in the 0-1 range.
---@param gui userdata
---@param red number
---@param green number
---@param blue number
---@param alpha number
function GuiColorSetForNextWidget(gui, red, green, blue, alpha) end
---Sets the rendering depth ('z') of the widgets following this call. Larger z = deeper. The z will be set to 0 on the next call to GuiStartFrame(). 
---@param gui userdata
---@param z number
function GuiZSet(gui, z) end
---Sets the rendering depth ('z') of the next widget following this call. Larger z = deeper.
---@param gui userdata
---@param z number
function GuiZSetForNextWidget(gui, z) end
---Can be used to solve ID conflicts. All ids given to Gui* functions will be hashed with the ids stacked (and hashed together) using GuiIdPush() and GuiIdPop(). The id stack has a max size of 1024, and calls to the function will do nothing if the size is exceeded.
---@param gui userdata
---@param id number
function GuiIdPush(gui, id) end
---Pushes the hash of 'str' as a gui id. See GuiIdPush().
---@param gui userdata
---@param str string
function GuiIdPushString(gui, str) end
---See GuiIdPush().
---@param gui userdata
function GuiIdPop(gui) end
---Starts a scope where animations initiated using GuiAnimateAlphaFadeIn() etc. will be applied to all widgets.
---@param gui userdata
function GuiAnimateBegin(gui) end
---Ends a scope where animations initiated using GuiAnimateAlphaFadeIn() etc. will be applied to all widgets.
---@param gui userdata
function GuiAnimateEnd(gui) end
---Does an alpha tween animation for all widgets inside a scope set using GuiAnimateBegin() and GuiAnimateEnd().
---@param gui userdata
---@param id number
---@param speed number
---@param step number
---@param reset boolean
function GuiAnimateAlphaFadeIn(gui, id, speed, step, reset) end
---Does a scale tween animation for all widgets inside a scope set using GuiAnimateBegin() and GuiAnimateEnd().
---@param gui userdata
---@param id number
---@param acceleration number
---@param reset boolean
function GuiAnimateScaleIn(gui, id, acceleration, reset) end
---@param gui userdata
---@param x number
---@param y number
---@param text string
---@param scale number? 1
---@param font string? ""
---@param font_is_pixel_font boolean? true
function GuiText(gui, x, y, text, scale, font, font_is_pixel_font) end
---Deprecated. Use GuiOptionsAdd() or GuiOptionsAddForNextWidget() with GUI_OPTION.Align_HorizontalCenter and GuiText() instead.
---@param gui userdata
---@param x number
---@param y number
---@param text string
function GuiTextCentered(gui, x, y, text) end
---'scale' will be used for 'scale_y' if 'scale_y' equals 0.
---@param gui userdata
---@param id number
---@param x number
---@param y number
---@param sprite_filename string
---@param alpha number? 1
---@param scale number? 1
---@param scale_y number? 0
---@param rotation number? 0
---@param rect_animation_playback_type number? GUI_RECT_ANIMATION_PLAYBACK.PlayToEndAndHide
---@param rect_animation_name string? ""
function GuiImage(gui, id, x, y, sprite_filename, alpha, scale, scale_y, rotation, rect_animation_playback_type, rect_animation_name) end
---@param gui userdata
---@param id number
---@param x number
---@param y number
---@param width number
---@param height number
---@param alpha number? 1
---@param sprite_filename string? "data/ui_gfx/decorations/9piece0_gray.png"
---@param sprite_highlight_filename string? "data/ui_gfx/decorations/9piece0_gray.png"
function GuiImageNinePiece(gui, id, x, y, width, height, alpha, sprite_filename, sprite_highlight_filename) end
---The old parameter order where 'id' is the last parameter is still supported. The function dynamically picks the correct order based on the type of the 4th parameter.
---@param gui userdata
---@param id number
---@param x number
---@param y number
---@param text string
---@param scale number? 1
---@param font string? ""
---@param font_is_pixel_font boolean? true
---@return boolean clicked, boolean right_clicked
function GuiButton(gui, id, x, y, text, scale, font, font_is_pixel_font) end
---@param gui userdata
---@param id number
---@param x number
---@param y number
---@param text string
---@param sprite_filename string
---@return boolean clicked, boolean right_clicked
function GuiImageButton(gui, id, x, y, text, sprite_filename) end
---This is not intended to be outside mod settings menu, and might bug elsewhere.
---@param gui userdata
---@param id number
---@param x number
---@param y number
---@param text string
---@param value number
---@param value_min number
---@param value_max number
---@param value_default number
---@param value_display_multiplier number
---@param value_formatting string
---@param width number
---@return number new_value
function GuiSlider(gui, id, x, y, text, value, value_min, value_max, value_default, value_display_multiplier, value_formatting, width) end
---'allowed_characters' should consist only of ASCII characters. This is not intended to be outside mod settings menu, and might bug elsewhere.
---@param gui userdata
---@param id number
---@param x number
---@param y number
---@param text string
---@param width number
---@param max_length number
---@param allowed_characters string? ""
---@return string new_text
function GuiTextInput(gui, id, x, y, text, width, max_length, allowed_characters) end
---Together with GuiEndAutoBoxNinePiece() this can be used to draw an auto-scaled background box for a bunch of widgets rendered between the calls.
---@param gui userdata
function GuiBeginAutoBox(gui) end
---@param gui userdata
---@param margin number? 5
---@param size_min_x number? 0
---@param size_min_y number? 0
---@param mirrorize_over_x_axis boolean? false
---@param x_axis number? 0
---@param sprite_filename string? "data/ui_gfx/decorations/9piece0_gray.png"
---@param sprite_highlight_filename string? "data/ui_gfx/decorations/9piece0_gray.png"
function GuiEndAutoBoxNinePiece(gui, margin, size_min_x, size_min_y, mirrorize_over_x_axis, x_axis, sprite_filename, sprite_highlight_filename) end
---@param gui userdata
---@param text string
---@param description string
function GuiTooltip(gui, text, description) end
---This can be used to create a container with a vertical scroll bar. Widgets between GuiBeginScrollContainer() and GuiEndScrollContainer() will be positioned relative to the container.
---@param gui userdata
---@param id number
---@param x number
---@param y number
---@param width number
---@param height number
---@param scrollbar_gamepad_focusable boolean? true
---@param margin_x number? 2
---@param margin_y number? 2
function GuiBeginScrollContainer(gui, id, x, y, width, height, scrollbar_gamepad_focusable, margin_x, margin_y) end
---@param gui userdata
function GuiEndScrollContainer(gui) end
---If 'position_in_ui_scale' is 1, x and y will be in the same scale as other gui positions, otherwise x and y are given as a percentage (0-100) of the gui screen size.
---@param gui userdata
---@param x number
---@param y number
---@param position_in_ui_scale boolean? false
---@param margin_x number? 2
---@param margin_y number? 2
function GuiLayoutBeginHorizontal(gui, x, y, position_in_ui_scale, margin_x, margin_y) end
---If 'position_in_ui_scale' is 1, x and y will be in the same scale as other gui positions, otherwise x and y are given as a percentage (0-100) of the gui screen size.
---@param gui userdata
---@param x number
---@param y number
---@param position_in_ui_scale boolean? false
---@param margin_x number? 0
---@param margin_y number? 0
function GuiLayoutBeginVertical(gui, x, y, position_in_ui_scale, margin_x, margin_y) end
---Will use the horizontal margin from current layout if amount is not set.
---@param gui userdata
---@param amount number? optional
function GuiLayoutAddHorizontalSpacing(gui, amount) end
---Will use the vertical margin from current layout if amount is not set.
---@param gui userdata
---@param amount number? optional
function GuiLayoutAddVerticalSpacing(gui, amount) end
---@param gui userdata
function GuiLayoutEnd(gui) end
---Puts following things to a new layout layer. Can be used to create non-layouted widgets inside a layout.
---@param gui userdata
function GuiLayoutBeginLayer(gui) end
---@param gui userdata
function GuiLayoutEndLayer(gui) end
---Returns dimensions of viewport in the gui coordinate system (which is equal to the coordinates of the screen bottom right corner in gui coordinates). The values returned may change depending on the game resolution because the UI is scaled for pixel-perfect text rendering.
---@param gui userdata
---@return number width, number height
function GuiGetScreenDimensions(gui) end
---Returns size of the given text in the gui coordinate system.
---@param gui userdata
---@param text string
---@param scale number? 1
---@param line_spacing number? 2
---@param font string? ""
---@param font_is_pixel_font boolean? true
---@return number width, number height
function GuiGetTextDimensions(gui, text, scale, line_spacing, font, font_is_pixel_font) end
---Returns size of the given image in the gui coordinate system.
---@param gui userdata
---@param image_filename string
---@param scale number? 1
---@return number width, number height
function GuiGetImageDimensions(gui, image_filename, scale) end
---Returns the final position, size etc calculated for a widget. Some values aren't supported by all widgets.
---@param gui userdata
---@return boolean clicked, boolean right_clicked, boolean hovered, number x, number y, number width, number height, number draw_x, number draw_y, number draw_width, number draw_height
function GuiGetPreviousWidgetInfo(gui) end
---@return boolean
function GameIsBetaBuild() end
---@return boolean
function DebugGetIsDevBuild() end
function DebugEnableTrailerMode() end
---@return boolean
function GameGetIsTrailerModeEnabled() end
---This doesn't do anything at the moment.
function Debug_SaveTestPlayer() end
---@param x number? camera_x
---@param y number? camera_y
---@return string string
function DebugBiomeMapGetFilename(x, y) end
---@param entity_id number
---@param material string
---@param use_material_colors boolean? true
---@param replace_existing_cells boolean? false
function EntityConvertToMaterial(entity_id, material, use_material_colors, replace_existing_cells) end
---@param material_dynamic string? ""
---@param material_static string? ""
function ConvertEverythingToGold(material_dynamic, material_static) end
---Converts 'material_from' to 'material_to' everwhere in the game world, replaces 'material_from_type' to 'material_to_type' in the material (CellData) global table, and marks 'material_from' as a "Transformed" material. Every call will add a new entry to WorldStateComponent which serializes these changes, so please call sparingly. The material conversion will be spread over multiple frames. 'material_from' will still retain the original name id and wang color. Use CellFactory_GetType() to convert a material name to material type.
---@param material_from_type number
---@param material_to_type number
function ConvertMaterialEverywhere(material_from_type, material_to_type) end
---Converts cells of 'material_from_type' to 'material_to_type' in the given area. If 'box2d_trim' is true, will attempt to trim the created cells where they might otherwise cause physics glitching. 'update_edge_graphics_dummy' is not yet supported.
---@param area_x number
---@param area_y number
---@param area_w number
---@param area_h number
---@param material_from_type number
---@param material_to_type number
---@param trim_box2d boolean
---@param update_edge_graphics_dummy boolean
function ConvertMaterialOnAreaInstantly(area_x, area_y, area_w, area_h, material_from_type, material_to_type, trim_box2d, update_edge_graphics_dummy) end
---Loads a given .txt file as a ragdoll into the game, made of the material given in material.
---@param filename string
---@param pos_x number
---@param pos_y number
---@param material string? "meat"
---@param scale_x number? 1
---@param impulse_x number? 0
---@param impulse_y number? 0
function LoadRagdoll(filename, pos_x, pos_y, material, scale_x, impulse_x, impulse_y) end
---@return number
function GetDailyPracticeRunSeed() end
---Returns true if a mod with the id 'mod_id' is currently active. For example mod_id = "nightmare". 
---@param mod_id string
---@return boolean
function ModIsEnabled(mod_id) end
---Returns a table filled with the IDs of currently active mods.
---@return string[] string
function ModGetActiveModIDs() end
---@return number
function ModGetAPIVersion() end
---Returns true if the file exists.
---@return boolean
function ModDoesFileExist(filename) end
---Returns a list of filenames from which materials were loaded.
---@return string[] filenames
function ModMaterialFilesGet() end

---Returns the value of a mod setting. 'id' should normally be in the format 'mod_name.setting_id'. Cache the returned value in your lua context if possible.
---@param id string
---@return boolean|number|string|nil
function ModSettingGet(id) end
---Sets the value of a mod setting. 'id' should normally be in the format 'mod_name.setting_id'.
---@param id string
---@param value boolean|number|string
function ModSettingSet(id, value) end
---Returns the latest value set by the user, which might not be equal to the value that is used in the game (depending on the 'scope' value selected for the setting).
---@param id string
---@return boolean|number|string|nil
function ModSettingGetNextValue(id) end
---Sets the latest value set by the user, which might not be equal to the value that is displayed to the game (depending on the 'scope' value selected for the setting).
---@param id string
---@param value boolean|number|string
---@param is_default boolean
function ModSettingSetNextValue(id, value, is_default) end
---@param id string
---@return boolean was_removed
function ModSettingRemove(id) end
---Returns the number of mod settings defined. Use ModSettingGetAtIndex to enumerate the settings.
---@return number
function ModSettingGetCount() end
---'index' should be 0-based index. Returns nil if 'index' is invalid.
---@param index number
---@return string (name, boolean|number|string|nil value, boolean|number|string|nil)|nil value_next
function ModSettingGetAtIndex(index) end
---@return boolean
function StreamingGetIsConnected() end
---@return string string
function StreamingGetConnectedChannelName() end
---@return number
function StreamingGetVotingCycleDurationFrames() end
---Returns the name of a random stream viewer who recently sent a chat message. Returns "" if the 'Creatures can be named after viewers' setting is off.
---@return string string
function StreamingGetRandomViewerName() end
---@return boolean
function StreamingGetSettingsGhostsNamedAfterViewers() end
---Sets the duration of the next wait and voting phases. Use -1 for default duration.
---@param time_between_votes_seconds number
---@param time_voting_seconds number
function StreamingSetCustomPhaseDurations(time_between_votes_seconds, time_voting_seconds) end
---Cancels whatever is currently going on, and starts a new voting. _streaming_on_vote_start() and _streaming_get_event_for_vote() will be called as usually.
function StreamingForceNewVoting() end
---Turns the voting UI on or off.
---@param enabled boolean
function StreamingSetVotingEnabled(enabled) end
---Basically calls dofile(from_filename) at the end of 'to_filename'. Available only in init.lua. Should not be called after OnMostPostInit(should be avoided after that because changes might not propagate, or could work in non-deterministic manner).
---@param to_filename string
---@param from_filename string
function ModLuaFileAppend(to_filename, from_filename) end

--[[
ModLuaFileGetAppends( filename:string ) -> {string} [Returns the paths of files that have been appended to 'filename' using ModLuaFileAppend(). Unlike most Mod* functions, this one is available everywhere.]
ModLuaFileSetAppends( filename:string, {string} ) [Replaces the appends list (see ModLuaFileAppend) of a file with the given table. Available only in init.lua. Should not be called after OnMostPostInit(should be avoided after that because changes might not propagate, or could work in non-deterministic manner).]
ModTextFileGetContent( filename:string ) -> string [Returns the current (modded or not) content of the data file 'filename'. Allows access only to data files and files from enabled mods. "mods/mod/data/file.xml" and "data/file.xml" point to the same file. Unlike most Mod* functions, this one is available everywhere.]
ModTextFileSetContent( filename:string, new_content:string ) [Sets the content the game sees for the file 'filename'. Allows access only to mod and data files. "mods/mod/data/file.xml" and "data/file.xml" point to the same file. Available only in init.lua. Should not be called after OnMostPostInit (should be avoided after that because changes might not propagate, or could work in non-deterministic manner). ModTextFileWhoSetContent might also return incorrect values if this is used after OnMostPostInit.]
ModTextFileWhoSetContent( filename:string ) -> string [Returns the id of the last mod that called ModTextFileSetContent with 'filename', or "". Unlike most Mod* functions, this one is available everywhere.]
ModImageMakeEditable( filename:string, width:int, height:int ) -> id:int,w:int,h:int [Makes an image available for in-memory editing through ModImageGetPixel() and ModImageSetPixel(). \nReturns an id that can be used to access the image, and the dimensions of the image. \nIf an image file with the name wasn't found, an in-memory image of the given size will be created, filled with empty pixels (0x0), and added to the virtual filesystem under 'filename'. \nIf an image with the given name has been previously created through ModImageMakeEditable, the id of that image will be returned. In case memory allocation failed, or if this is called outside mod init using a filename that wasn't succesfully used with this function during the init, 0 will be returned as the id. \nThe game will apply further processing to some images, so the final binary data might end up different. For example, R and B channels are sometimes swapped, and on some textures the colors will be extended by one pixel outside areas where A>0. \nIf game code has already loaded the image (for example this could be the case with some UI textures), the changes will probably not be applied. \nThe changes done using the ModImage* API will need to be done again on each game restart/new game. It's possible that some images will be cached over restarts, and changes will not be visible in the game until a full executable restart - you will have to figure out where that applies. \nAllows access to data files and files from enabled mods. "mods/mod/data/file.png" and "data/file.png" point to the same file. Available only in init.lua during mod init. ]
ModImageIdFromFilename( filename:string ) -> id:int,w:int,h:int [Returns an id that can be used with ModImageGetPixel and ModImageSetPixel, and the dimensions of the image. \n If a previous successful call to ModImageMakeEditable hasn't been made with the given filename, 0 will be returned as 'id', 'w' and 'h'. \nUnlike most Mod* functions, this one is available everywhere.]
ModImageGetPixel( id:int, x:int, y:int ) -> uint [Returns the color of a pixel in ABGR format (0xABGR). 'x' and 'y' are zero-based. \nUse ModImageMakeEditable to create an id that can be used with this function. \n While it's possible to edit images after mod init, it's not guaranteed that game systems will see the changes, as the system might already have loaded the image at that point. \nThe function will silently fail nad return 0 if 'id' isn't valid. \nUnlike most Mod* functions, this one is available everywhere.]
ModImageSetPixel( id:int, x:int, y:int, color:uint ) [Sets the color of a pixel in ABGR format (0xABGR). 'x' and 'y' are zero-based. \nUse ModImageMakeEditable to create an id that can be used with this function. \n The function will silently fail if 'id' isn't valid. \nUnlike most Mod* functions, this one is available everywhere.]
ModImageWhoSetContent( filename:string ) -> string [Returns the id of the last mod that called ModImageMakeEditable with 'filename', or "". Unlike most Mod* functions, this one is available everywhere.]
ModImageDoesExist( filename:string ) -> bool [Returns true if a file or virtual image exists for the given filename. Unlike most Mod* functions, this one is available everywhere.]
ModMagicNumbersFileAdd( filename:string ) [Available only during mod initialization in init.lua.]
ModMaterialsFileAdd( filename:string ) [Available only during mod initialization in init.lua.]
ModRegisterAudioEventMappings( filename:string ) [Registers custom fmod events. Needs to be called to make the game find events in mods' audio banks. Event mapping (GUID) files can be generated using FMOD Studio. Available only during mod initialization in init.lua.]
ModRegisterMusicBank( filename:string ) [Registers a custom bank in the music system. After that the tracks can be configured to play through Biome xml, or using GameTriggerMusicEvent. ModRegisterAudioEventMappings also needs to be called to make the game recognize the events in the bank. Available only during mod initialization in init.lua.]
ModDevGenerateSpriteUVsForDirectory( directory_path:string, override_existing:bool = false ) [Please supply a path starting with "mods/YOUR_MOD_HERE/" or "data/". If override_existing is true, will always generate new maps, overriding existing files. UV maps are generated when you start or continue a game with your mod enabled. Available only during mod initialization in init.lua via noita_dev.exe]
]]

---Returns the paths of files that have been appended to 'filename' using ModLuaFileAppend(). Unlike most Mod* functions, this one is available everywhere.
---@param filename string
---@return string[] filenames
function ModLuaFileGetAppends(filename) end
---Replaces the appends list (see ModLuaFileAppend) of a file with the given table. Available only in init.lua. Should not be called after OnMostPostInit(should be avoided after that because changes might not propagate, or could work in non-deterministic manner).
---@param filename string
---@param filenames string[]
function ModLuaFileSetAppends(filename, filenames) end
---Returns the current (modded or not) content of the data file 'filename'. Allows access only to data files and files from enabled mods. "mods/mod/data/file.xml" and "data/file.xml" point to the same file. Unlike most Mod* functions, this one is available everywhere.
---@param filename string
---@return string string
function ModTextFileGetContent(filename) end
---Sets the content the game sees for the file 'filename'. Allows access only to mod and data files. "mods/mod/data/file.xml" and "data/file.xml" point to the same file. Available only in init.lua. Should not be called after OnMostPostInit (should be avoided after that because changes might not propagate, or could work in non-deterministic manner). ModTextFileWhoSetContent might also return incorrect values if this is used after OnMostPostInit.
---@param filename string
---@param new_content string
function ModTextFileSetContent(filename, new_content) end
---Returns the id of the last mod that called ModTextFileSetContent with 'filename', or "". Unlike most Mod* functions, this one is available everywhere.
---@param filename string
---@return string string
function ModTextFileWhoSetContent(filename) end
---Makes an image available for in-memory editing through ModImageGetPixel() and ModImageSetPixel(). Returns an id that can be used to access the image, and the dimensions of the image. If an image file with the name wasn't found, an in-memory image of the given size will be created, filled with empty pixels (0x0), and added to the virtual filesystem under 'filename'. If an image with the given name has been previously created through ModImageMakeEditable, the id of that image will be returned. In case memory allocation failed, or if this is called outside mod init using a filename that wasn't succesfully used with this function during the init, 0 will be returned as the id. The game will apply further processing to some images, so the final binary data might end up different. For example, R and B channels are sometimes swapped, and on some textures the colors will be extended by one pixel outside areas where A>0. If game code has already loaded the image (for example this could be the case with some UI textures), the changes will probably not be applied. The changes done using the ModImage* API will need to be done again on each game restart/new game. It's possible that some images will be cached over restarts, and changes will not be visible in the game until a full executable restart - you will have to figure out where that applies. Allows access to data files and files from enabled mods. "mods/mod/data/file.png" and "data/file.png" point to the same file. Available only in init.lua during mod init.
---@param filename string
---@param width number
---@param height number
---@return number id, number w, number h
function ModImageMakeEditable(filename, width, height) end
---Returns an id that can be used with ModImageGetPixel and ModImageSetPixel, and the dimensions of the image. If a previous successful call to ModImageMakeEditable hasn't been made with the given filename, 0 will be returned as 'id', 'w' and 'h'. Unlike most Mod* functions, this one is available everywhere.
---@param filename string
---@return number id, number w, number h
function ModImageIdFromFilename(filename) end
---Returns the color of a pixel in ABGR format (0xABGR). 'x' and 'y' are zero-based. Use ModImageMakeEditable to create an id that can be used with this function. While it's possible to edit images after mod init, it's not guaranteed that game systems will see the changes, as the system might already have loaded the image at that point. The function will silently fail nad return 0 if 'id' isn't valid. Unlike most Mod* functions, this one is available everywhere.
---@param id number
---@param x number
---@param y number
---@return number color
function ModImageGetPixel(id, x, y) end
---Sets the color of a pixel in ABGR format (0xABGR). 'x' and 'y' are zero-based. Use ModImageMakeEditable to create an id that can be used with this function. The function will silently fail if 'id' isn't valid. Unlike most Mod* functions, this one is available everywhere.
---@param id number
---@param x number
---@param y number
---@param color number
function ModImageSetPixel(id, x, y, color) end
---Returns the id of the last mod that called ModImageMakeEditable with 'filename', or "". Unlike most Mod* functions, this one is available everywhere.
---@param filename string
---@return string string
function ModImageWhoSetContent(filename) end
---Returns true if a file or virtual image exists for the given filename. Unlike most Mod* functions, this one is available everywhere.
---@param filename string
---@return boolean
function ModImageDoesExist(filename) end
---Available only during mod initialization in init.lua.
---@param filename string
function ModMagicNumbersFileAdd(filename) end
---Available only during mod initialization in init.lua.
---@param filename string
function ModMaterialsFileAdd(filename) end
---Registers custom fmod events. Needs to be called to make the game find events in mods' audio banks. Event mapping (GUID) files can be generated using FMOD Studio. Available only during mod initialization in init.lua.
---@param filename string
function ModRegisterAudioEventMappings(filename) end
---Registers a custom bank in the music system. After that the tracks can be configured to play through Biome xml, or using GameTriggerMusicEvent. ModRegisterAudioEventMappings also needs to be called to make the game recognize the events in the bank. Available only during mod initialization in init.lua.
---@param filename string
function ModRegisterMusicBank(filename) end
---Please supply a path starting with
---"mods/YOUR_MOD_HERE/" or "data/". If override_existing is true, will always generate new maps, overriding existing files. UV maps are generated when you start or continue a game with your mod enabled. Available only during mod initialization in init.lua via noita_dev.exe
---@param directory_path string
---@param override_existing boolean? false
function ModDevGenerateSpriteUVsForDirectory(directory_path, override_existing) end
---@param entity_filename string
function RegisterProjectile(entity_filename) end
function RegisterGunAction() end
function RegisterGunShotEffects() end
---@param entity_filename string
function BeginProjectile(entity_filename) end
function EndProjectile() end
---@param timeout_frames number
function BeginTriggerTimer(timeout_frames) end
function BeginTriggerHitWorld() end
function BeginTriggerDeath() end
function EndTrigger() end
function SetProjectileConfigs() end
---@param reload_time number
function StartReload(reload_time) end
---@param inventoryitem_id number
---@param uses_remaining number
---@return boolean uses_remaining_reduced
function ActionUsesRemainingChanged(inventoryitem_id, uses_remaining) end
---@param inventoryitem_id number
function ActionUsed(inventoryitem_id) end
---@param action_name string
function LogAction(action_name) end
---@param action_id string
function OnActionPlayed(action_id) end
function OnNotEnoughManaForAction() end
---@param name string
function BaabInstruction(name) end
---@param key string
---@param value number
function SetValueNumber(key, value) end
---@param key string
---@param default_value number
---@return number
function GetValueNumber(key, default_value) end
---@param key string
---@param value number
function SetValueInteger(key, value) end
---@param key string
---@param default_value number
---@return number
function GetValueInteger(key, default_value) end
---@param key string
---@param value number
function SetValueBool(key, value) end
---@param key string
---@param default_value number
---@return boolean
function GetValueBool(key, default_value) end
---Returns the script's return value, if any. Returns nil,error_string if the script had errors.
---@param filename string
---@return any script_return_type, string|nil error_string
function dofile(filename) end
---Runs the script only once per lua context, returns the script's return value, if any. Returns nil,error_string if the script had errors. For performance reasons it is recommended scripts use dofile_once(), unless the standard dofile behaviour is required.
---@param filename string
---@return any script_return_type, string|nil error_string
function dofile_once(filename) end
---Same as `print`, but also always writes to logger.txt.
---@param ... any
---@see print
function print_error(...) end
---Overwritten implementation of builtin loadfile with limited functionality.
---@param filename string
---@return function|nil
---@return string|nil  error_message
function loadfile(filename) end
---@param filename string
function do_mod_appends(filename) end
-- Can be defined in init.lua.
-- Called upon loading a game.
function OnModPreInit() end
-- Can be defined in init.lua.
-- Called upon loading a game.
function OnModInit() end
-- Can be defined in init.lua.
-- Called upon loading a game.
function OnModPostInit() end
-- Can be defined in init.lua.
-- Called when player entity has been created. Ensures chunks around the player have been loaded & created.
function OnPlayerSpawned(player_entity) end
-- Can be defined in init.lua.
-- Called when the player dies
function OnPlayerDied( player_entity ) end
-- Can be defined in init.lua.
-- Called once the game world is initialized. Doesn't ensure any chunks around the player.
function OnWorldInitialized() end
-- Can be defined in init.lua.
-- Called *every* time the game is about to start updating the world
function OnWorldPreUpdate() end
-- Can be defined in init.lua.
-- Called *every* time the game has finished updating the world
function OnWorldPostUpdate() end
-- Can be defined in init.lua.
-- Called when the biome config is loaded.
function OnBiomeConfigLoaded() end
-- Can be defined in init.lua.
-- Called when the world seed is set and magic numbers have been loaded.
-- The last point where the Mod API is available. After this materials.xml will be loaded.
function OnMagicNumbersAndWorldSeedInitialized() end
-- Can be defined in init.lua.
-- Called when the game is paused or unpaused.
function OnPausedChanged( is_paused, is_inventory_pause ) end
-- Can be defined in init.lua.    
-- Will be called when the game is unpaused, if player changed any mod settings while the game was paused
function OnModSettingsChanged() end
-- Can be defined in init.lua.
-- Will be called when the game is paused, either by the pause menu or some inventory menus. Please be careful with this, as not everything will behave well when called while the game is paused.
function OnPausePreUpdate() end
-- Can be defined in init.lua.
-- Called when the progress window is open. 2 integers should be returned, the first is total secrets and second is found secrets.
function OnCountSecrets() end

-- Defined in "data/scripts/lib/utilities.lua".
GUI_OPTION = {
	None = 0,

	-- GUI element is draggable.
	IsDraggable = 1,
	-- GUI element can not be interacted with and can be clicked through.
	NonInteractive = 2,
	AlwaysClickable = 3,
	ClickCancelsDoubleClick = 4,
	IgnoreContainer = 5,
	NoPositionTween = 6,
	ForceFocusable = 7,
	HandleDoubleClickAsClick = 8,
	-- it's recommended you use this to communicate the widget where gamepad input will focus when entering a new menu
	GamepadDefaultWidget = 9, 

	Layout_InsertOutsideLeft = 10,
	Layout_InsertOutsideRight = 11,
	Layout_InsertOutsideAbove = 12,
	Layout_ForceCalculate = 13,
	Layout_NextSameLine = 14,
	Layout_NoLayouting = 15,

	-- Align text element to center.
	Align_HorizontalCenter = 16,
	-- Align text element to the left(?)
	Align_Left = 17,

	FocusSnapToRightEdge = 18,

	NoPixelSnapY = 19,

	DrawAlwaysVisible = 20,
	DrawNoHoverAnimation = 21,
	DrawWobble = 22,
	DrawFadeIn = 23,
	DrawScaleIn = 24,
	DrawWaveAnimateOpacity = 25,
	DrawSemiTransparent = 26,
	DrawActiveWidgetCursorOnBothSides = 27,
	DrawActiveWidgetCursorOff = 28,

	TextRichRendering = 29,

	-- Disable sound for GUI element.
	NoSound = 47,
	Hack_ForceClick = 48,
	Hack_AllowDuplicateIds = 49,

	ScrollContainer_Smooth = 50,
	IsExtraDraggable = 51,

	_SnapToCenter = 62,
	Disabled = 63,
}
-- Defined in "data/scripts/lib/utilities.lua".
GUI_RECT_ANIMATION_PLAYBACK = {
	PlayToEndAndHide = 0,
	PlayToEndAndPause = 1,
	Loop = 2,
}
-- Defined in "data/scripts/debug/keycodes.lua".