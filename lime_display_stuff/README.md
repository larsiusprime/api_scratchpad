#Goal:

* Primitives for use in Openfl.Capabilities (screen resolution, dpi, etc)
* Pave the way for true multi monitor support

**Package:** lime.display

---------------------

##Top Level:

TYPE   | name            | description 
-------|-----------------|-------------
 `Array<DisplayDevice>` | displays | Enumerate all displays currently connected 
 
##DisplayDevice properties:
 
###Basic stuff
  
 TYPE   | name            | description 
 -------|-----------------|-------------
 `String` | name          | name of the device e.g. "Samsung SyncMaster P2350", "Occulus Rift DK2", "3DS top screen", etc
 `Bool` | isActive        | is this device currently powered on and displaying stuff
 `Bool` | isPrimary       | is this the "primary" display device
 `Int`  | id              | which "number" display device is this according to the OS
 `Int`  | displayOrder    | where does the OS think this display "goes", arranging left-to-right? (or top/bottom for say 3DS)
 `Vec2` | displayPosition | in case you've got an extremely fancy setup, accounts for horizontal AND vertical
 `Object` | EDID | Raw EDID data? [link](https://en.wikipedia.org/wiki/Extended_Display_Identification_Data)

###Physical characteristics
 
  TYPE   | name         | description 
 --------|--------------|-------------
  `Vec2` | physicalSize | Width / Height of the display area, in inches and/or centimeters 
  `Float`| aspectRatio  | Aspect Ratio (4x3 = 1.3333, 16x9 = 1.7777) 
  `Enum` | orienation   | Orientation ("Portrait", "Lanscape", "Square"), if applicable. 
  `Vec2` | nativeResolution | For LCD monitors, etc, the resolution where everything is 1:1 and perfectly crisp
  
###CURRENT settings
  
 TYPE   | name            | description
 -------|-----------------|-------------
 `Vec2`   | resolution  | Screen resolution (width x height), in pixels
 `Int`(?) | dpi         | Screen DPI or equivalent metric
 `Enum`   | colorDepth  | Color depth (24-bit vs 32-bit, etc)
 `Int`(?) | refreshRate | Refresh rate (in Hz)
 `DisplayMode` | displayMode | All of the above bundled into an object
  
###SUPPORTED settings
  
TYPE   | name            | description
-------|-----------------|------------
`Array<Vec2>` | resolutions | List of screen resolutions (simple width x height)
`Array<DisplayMode>` | displayModes | List of explicitly supported display MODES (screen resolution + color mode + refresh rate + DPI(?)
  
###SPECIAL characteristics connected to the display
  
TYPE   | name           | description
-------|----------------|-----------------
`Bool` | hasSingleTouch          | anything with at least one touch point, from cintiq to iOS to 3DS to wiiU |
`Bool` | hasMultiTouch           | anything with at least two touch points
`Bool` | hasTouchPressure        | if true, touch pressure is analog 0.0-1.0, if false, touch is binary
`Bool` | hasStereoscopic3D       | supports 3DS or Occulus-Rift style 3D, two output buffers in one device
`Bool` | stereoscopic3DisActive  | is the 3D on right now
`Float` | streoscopic3DSlider    | how strong is the 3D effect? (3DS slider, etc)


