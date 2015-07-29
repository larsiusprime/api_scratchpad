#Goal:

* Primitives for use in Openfl.Capabilities (screen resolution, dpi, etc)
* Pave the way for true multi monitor support

#Things:

* `Array<DisplayObject>`: Enumerate all displays currently connected. Has following information for every display (as available):

  * **Physical characteristics**:
    * `Vec2` Width / Height of the display area, in inches and/or centimeters
    * `Float` Aspect Ratio (4x3 = 1.3333, 16x9 = 1.7777)
    * `Enum`  Orientation ("Portrait", "Lanscape", "Square"), if applicable.
    
  * **CURRENT settings**:
    * `Vec2` Screen resolution (width x height), in pixels
    * `Int`(?) Screen DPI or equivalent metric
    * `Enum` Color mode (24-bit vs 32-bit) --> is this still important? I think it probably is...
    * `Int`(?) Refresh rate (in Hz)
    * `ScreenMode` All of the above bundled into an object
    
  * **SUPPORTED settings**:
    * `Array<Vec2>` List of screen resolutions (simple width x height)
    * `Array<ScreenMode>` List of explicitly supported screen MODES (screen resolution + color mode + refresh rate + DPI(?)
     
  * **SPECIAL characteristics connected to the display**:
    * `Bool` hasSingleTouch
    * `Bool` hasMultiTouch
    * `Bool` hasTouchPressure
    * `Bool` hasStereoscopic3D

#Package:

### lime.display


