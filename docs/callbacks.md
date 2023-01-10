# Function Tag Callbacks
MoxGUI provides many function tags that are called throughout the process of rendering the GUI.

While they can be used to run any function, it is best that they be used to run only functions that fit
their intended scope.

Another recommended pattern, is for functions called by the given tags to act more as indexes; namely, they
should read given values, and call further functions relevant only to the given values.

This is important, as MoxGUI is already a rather heavy library, and care should be taken to limit the amount of commands executed.

All callbacks are executed as the executing player by default, with any exceptions noted.

## Shared Callbacks
### Init
**Tag:** `#gui:init`  
**Executor:** The executing player

This is the first callback to be run. It is intended for any functions that need to be run for any GUI interaction.
As such, it should be used sparingly, as both `select` and `render` provide their own init functions as well.

### Index
**Tag:** `#gui:index`  

This callback is called after the init functions of both `select` and `render`.

It is intended that this callback run an index function, that should take the scoreboard value `gui.page`
of `@s`, and run a function corresponding to the given page number.

See [template.md](/docs/template.md) for more information.

## Select
These callbacks are run during the `select` phase of the GUI rendering.

### Init
**Tag:** `#gui:select/init`  

This callback is called at the start of the `select` phase. It should be used to initialise any data specific to the `select` phase.

### Index
See [Index](#index)

### Flags
**Tag:** `#gui:select/flags`  

This callback is intended to be used for interpreting flags set in `gui:page flags`.

### Slot
**Tag:** `#gui:select/slot`

This callback is called after the selected slot has been calculated. The data for the selected
slot can be accessed from `gui:slot current`.

## Render
These callbacks are run during the `render` phase of the GUI rendering.

### Init
**Tag:** `#gui:render/init`

This callback is called at the start of the `render` phase. It should be used to initialise any data specific to the `render` phase.

### Index
See [Index](#index)

### Theme
**Tag:** `#gui:theme`

This callback should be used to set a custom theme, based on the value of `gui:page flags.theme`.
See [themes.md](/docs/themes.md) for more information.

### Flags
**Tag:** `#gui:render/flags`  

This callback is intended to be used for interpreting flags set in `gui:page flags`.

### Per-slot Callbacks
The following callbacks are called once each for each slot in `gui:page template`.
The current slot is provided in `gui:slot current`, and changes made to said data will persist across said callbacks,
to be rendered after the callbacks have been run.

Items are rendered by taking the `item` nbt of `gui:slot current`, putting them in the hand of a temporary armor stand,
and then copying the item from said armor stand to the GUI's container, in the correct slot per `slot`.
This process occurs after all the following callbacks have been run.

#### Slot
**Tag:** `#gui:render/slot`  

This callback is intended for any changes to the slot data to be made in this callback, such as changing the id of the item,
or adding extra nbt to be read by the following callbacks.

#### Entity
**Tag:** `#gui:render/entity`

This callback is run after the item render entity has been summoned, and is intended for any modifiers or functions
that need to be run as the executing player, but also need to be able to target the item render entity.

The entity has the uuid `1674b3a8-0135-a32e-02a4-06fb01241978`.

#### Item
**Tag:** `#gui:render/item`  
**Executor:** An armor stand with the uuid `1674b3a8-0135-a32e-02a4-06fb01241978`.

As this callback is run by the item render entity, it is perfect for running any item modifiers on it,
as they can just use `@s`. The slot containing the item to be rendered is `weapon.mainhand`.

## Cleanup
**Tag:** `#gui:cleanup`

This callback is run after the GUI has fully finished rendering, and should be used to clean up any messy data.