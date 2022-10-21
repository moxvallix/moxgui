# Moxvallix's GUI Lib
## Making Datapack GUIs easier

**Moxvallix's GUI Lib relies on [Taglib](https://github.com/HeDeAnTheonlyone/Taglib)**  
**Taglib comes packaged in the Releases, but is not kept in the source**

This datapack automates much of hard parts of GUI development.
It is data driven, meaning it renders the GUI based on a template stored in data storage.

Currently, it only supports an Enderchest UI. However, plans for other UI types are in the works.

One benefit of this GUI system, being data driven, means that making generators for GUIs should be fairly easy.
I however have not created one yet.

### Getting Started
#### Overview
There are two main functions: `gui:api/render` and `gui:api/select`.
Render will draw the gui, based on the page id, and select will run any clicks in the GUI.

All other functions are to be considered private, and running them yourself is not recommended.

The select function should be run as the player, on a loop, whenever the GUI should be active.
If you wanted the GUI always active, you could set it to run as @a from your tick function.

#### Making an Index
For your GUI to work, you will need an index function.
Such a function, when run, will take in `@s` score of `gui.page`, and will set the correct template data for that page.

It is recommended that you set the template data within a separate function, and that index merely calls said function.

*An example index function*
```
execute if score @s gui.page matches 1 run function pack:gui/menu
execute if score @s gui.page matches 2 run function pack:gui/options
execute if score @s gui.page matches 3 run function pack:gui/shop
```

You will then need to register your index function to run in the index tag. Add it to the `gui:index` function tag.
```
{
    "values": [
      "pack:gui/index"
    ]
}
```

#### Making a Template
Now we can create GUI templates. These will be functions that the index will run.

*An example template function (pack:gui/menu)*
```
data modify storage gui:page template set value [{slot:12b,page:2s,item:{id:"minecraft:redstone_dust"}},{slot:14b,page:3s,item:{id:"minecraft:chest"}}]
```
The above menu template would render two items to the GUI, one in slot 12, the other in slot 14.
Slot 12:
  - has page:2s, would render `pack:gui/options` when clicked
  - has an item tag, setting the item to `redstone_dust`
Slot 14:
  - has page:3s, would render `pack:gui/shop` when clicked
  - has an item tag, setting the item to `chest`

If you want to try it out, make sure to set your `gui.page` score to 1, then run either `gui:api/render`, or
have `gui:api/select` on loop as described above.

#### Manipulate Slots as they Render
Sometimes, you will want to manipulate slots as they render, such that you can have dynamic menus.
You can add any custom tags you like to the slots in your template data, as long as the `slot` tag is defined.

Every time a slot is going to be rendered, it first calls the `gui:render/slot` function tag.
You can add a custom function to this tag, in order to manipulate the slot data.

The current slot data will be available to be manipulated from the data storage `gui:slot current`.

Render will also call the function tag `gui:render/item`, with @s being a temporary armor stand,
and the current item being rendered in its mainhand. This will allow for item modifiers to be run.

#### Custom Functionality on Selection
Another key part of a gui is being able to run custom functions when a particular slot is selected.

Whenever a slot is selected, it calls the `gui:select/slot` function tag,
as the player that selected the slot.

You will then be able to read the selected slot from the data storage `gui:slot current`.