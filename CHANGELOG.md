# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.3.0] - 2023-01-10
This version adds a lot more power and customisability to the GUI system.
It makes use of more advanced functionality provided by Moxlib.

### Added
- Theme system, for pre-configured items. Used with `icon` tag.
- Flag system. Used to configure pages. Flags can be set by the template, or when a slot is selected.
- Built-in pages (Reserving pages 100 to 1000):
  - Numeric (Page 100) -- Number input.
- Built-in item modifiers (set with `item.modifier` tag):
  - `gui:player_head` -- sets the player head to the executing player.
  - `gui:name` -- sets the name of the item to whatever is defined in the `name` tag.
- `#gui:theme`: Called to set the theme, based on `gui:page flags.theme`.
- `#gui:cleanup`: Called after the GUI has finished rendering.
- `#gui:render/flags` and `#gui:select/flags`:
  - Called before the slots are iterated.
  - Provides access to data storage `gui:page flags`
- `#gui:render/entity`:
  - Called after the render entity is summoned, but before `#gui:render/item`
  - Used to modify the entity, `1674b3a8-0135-a32e-02a4-06fb01241978` as the player.
- Started work on improving documentation, with the callbacks documentation.

## [0.2.0] - 2022-12-30
### Added
- Support for container based GUIs
- Moxlib dependency
- Changelog

### Changed
- Separated "select" API into "select" and "watch"
  - Select just runs the selection, watch checks for when a selection is made, then runs it.
- Namespaced the API under "enderchest" or "barrel", eg "gui:api/barrel/render" or "gui:api/enderchest/select"

### Fixed
- Items incorrectly put into a GUI are now returned rather than deleted.


## [0.1.0] - 2022-10-21
Initial release!

### Added
- Initial working enderchest GUI system
- Taglib dependency
- Readme and License