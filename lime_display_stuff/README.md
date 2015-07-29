#Goal:

* Primitives for use in Openfl.Capabilities (screen resolution, dpi, etc)
* Pave the way for true multi monitor support

#Things:

* `Array<DisplayObject>`: Enumerate all displays currently connected. Has following information for every display (as available):

  * *Physical characteristics*:
    *  2x `Float` Width / Height of the display area, in inches and/or centimeters
    *  1x `Float` Aspect Ratio (4x3, 16x9)
    *  1x `Enum`  Orientation ("Portrait", "Lanscape", "Square"), if applicable.
    
  * *CURRENT settings*:
    *  2x `Float` Screen resolution (width x height), in pixels
    *  1x `Int`(?) Screen DPI or equivalent metric
    *  1x `Enum` Color mode (24-bit vs 32-bit) --> is this still important? I think it probably is...
    *  1x `Int`(?) Refresh rate (in Hz)
    *  1x `ScreenMode` All of the above bundled into an object
    
  * *SUPPORTED settings*:
    *  `Array<Vector2>` List of screen resolutions (simple width x height)
    *  `Array<ScreenMode>` List of explicitly supported screen MODES (screen resolution + color mode + refresh rate + DPI(?) )

#Package:

### lime.display


