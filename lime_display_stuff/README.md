#Goal:

* Primitives for use in Openfl.Capabilities (screen resolution, dpi, etc)
* Pave the way for true multi monitor support

#Package:

lime.display

---------------------

##Top Level:

TYPE   | name            | description 
-------|-----------------|-------------
 `Array<DisplayObject>` | displays | Enumerate all displays currently connected 
 
##DisplayObject properties:
 
###Basic stuff
  
 TYPE   | name            | description 
 -------|-----------------|-------------
 `Bool` | isActive        | is this device currently powered on and displaying stuff
 `Bool` | isPrimary       | is this the "primary" display device
 `Int`  | id              | which "number" display device is this according to the OS
 `Int`  | displayOrder    | where does the OS think this display "goes", arranging left-to-right? (or top/bottom for say 3DS)
 `Vec2` | displayPosition | in case you've got an extremely fancy setup, accounts for horizontal AND vertical

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
  
TYPE   | name            
-------|----------------
`Bool` | hasSingleTouch
`Bool` | hasMultiTouch
`Bool` | hasTouchPressure
`Bool` | hasStereoscopic3D


