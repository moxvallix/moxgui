# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

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