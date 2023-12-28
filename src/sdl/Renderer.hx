package sdl;

@:keep
@:native("SDL_Renderer")
@:include("vendor/include/Headers.h")
extern class SDL_Renderer {}

typedef Renderer = Pointer<SDL_Renderer>;

@:keep
enum abstract RendererFlip(UInt32) to UInt32 from UInt32 {
	var NONE = 0x00000000;
    var HORIZONTAL = 0x00000001;
    var VERTICAL = 0x00000002;
}