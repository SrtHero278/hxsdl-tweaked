package sdl;

import cpp.CastCharStar;
import sdl.Types;
import cpp.ConstCharStar;
import cpp.RawConstPointer;

import haxe.io.BytesData;

@:keep
@:include("vendor/include/Headers.h")
@:buildXml("<include name=\"${haxelib:hxsdl}/include.xml\"/>")

// WARNING: This will not have every feature SDL has to offer!
//
// Make an issue explaining what feature you want implemented over on GitHub!
// https://github.com/swordcube/hxsdl/issues

extern class SDL {
	// SDL.h
	@:native("SDL_Init")
	static function init(flags:UInt32):Int;

	@:native("SDL_InitSubSystem")
	static function initSubSystem(flags:UInt32):Int;

	@:native("SDL_QuitSubSystem")
	static function quitSubSystem(flags:UInt32):Void;

	@:native("SDL_WasInit")
	static function wasInit(flags:UInt32):UInt32;

	@:native("SDL_Quit")
	static function quit():Void;



	// SDL_hints.h
	@:native("SDL_SetHintWithPriorit")
	static function setHintWithPriority(name:ConstCharStar, value:ConstCharStar, priority:HintPriority):Boolean;

	@:native("SDL_SetHint")
	static function setHint(name:ConstCharStar, value:ConstCharStar):Boolean;

	@:native("SDL_ResetHint")
	static function resetHint(name:ConstCharStar):Boolean;

	@:native("SDL_ResetHints")
	static function resetHints():Void;

	@:native("SDL_GetHint")
	static function getHint(name:ConstCharStar):ConstCharStar;

	@:native("SDL_GetHintBoolean")
	static function getHintBoolean(name:ConstCharStar, defaultVal:Boolean):Boolean;

	static inline function addHintCallback(name:ConstCharStar, callback:HintCallback, userdata:Any) {
		untyped __cpp__("SDL_AddHintCallback({0}, {1}, {2})", name, callback, userdata);
	}

	static inline function deleteHintCallback(name:ConstCharStar, callback:HintCallback, userdata:Any) {
		untyped __cpp__("SDL_DelHintCallback({0}, {1}, {2})", name, callback, userdata);
	}

	@:native("SDL_ClearHints")
	static function clearHints():Void;



	// SDL_error.h
	@:native("SDL_GetError")
	static function getError():ConstCharStar;

	@:native("SDL_GetErrorMsg")
	static function getErrorMsg(errorString:CastCharStar, maxLength:Int):CastCharStar;

	@:native("SDL_ClearError")
	static function clearError():Void;



	// SDL_log.h
	@:native("SDL_LogSetAllPriority")
	static function setAllPriority(priority:LogPriority):Void;

	@:native("SDL_LogSetPriority")
	static function setPriority(category:Int, priority:LogPriority):Void;

	@:native("SDL_LogGetPriority")
	static function getPriority(category:Int):LogPriority;

	@:native("SDL_LogResetPriorities")
	static function resetPriorities():Void;

	@:native("SDL_Log")
	static function log(fmt:ConstCharStar, rest:haxe.Rest<Dynamic>):Void;

	@:native("SDL_LogVerbose")
	static function logVerbose(category:Int, fmt:ConstCharStar, rest:haxe.Rest<Dynamic>):Void;
	
	@:native("SDL_LogDebug")
	static function logDebug(category:Int, fmt:ConstCharStar, rest:haxe.Rest<Dynamic>):Void;

	@:native("SDL_LogInfo")
	static function logInfo(category:Int, fmt:ConstCharStar, rest:haxe.Rest<Dynamic>):Void;

	@:native("SDL_LogWarn")
	static function logWarn(category:Int, fmt:ConstCharStar, rest:haxe.Rest<Dynamic>):Void;

	@:native("SDL_LogError")
	static function logError(category:Int, fmt:ConstCharStar, rest:haxe.Rest<Dynamic>):Void;

	@:native("SDL_LogCritical")
	static function logCritical(category:Int, fmt:ConstCharStar, rest:haxe.Rest<Dynamic>):Void;

	@:native("SDL_LogMessage")
	static function logMessage(category:Int, priority:LogPriority, fmt:ConstCharStar, rest:haxe.Rest<Dynamic>):Void;

	static inline function getOutputFunction(userdata:Any):LogOutputFunction {
		untyped __cpp__("SDL_LogOutputFunction _func; SDL_LogGetOutputFunction(&_func, &{0})", userdata);
		return untyped __cpp__("_func");
	}


	static inline function setOutputFunction(callback:LogOutputFunction, userdata:Any):Void {
		untyped __cpp__("SDL_LogSetOutputFunction({0}, {1})", callback, userdata);
	}

	@:native("SDL_MAJOR_VERSION")
	static final majorVersion:Int;

	@:native("SDL_MINOR_VERSION")
	static final minorVersion:Int;

	@:native("SDL_PATCHLEVEL")
	static final patchLevel:Int;

	static inline function getVersion():SDLVersion {
		untyped __cpp__("SDL_version _sdlVer; SDL_VERSION(&_sdlVer)");
		return untyped __cpp__("_sdlVer");
	}

	static inline function versionAtLeast(major:Int, minor:Int, patch:Int) {
		return untyped __cpp__("SDL_VERSION_ATLEAST({0}, {1}, {2})", major, minor, patch);
	}

	@:native("SDL_GetRevision")
	static function getRevision():ConstCharStar;

	@:native("SDL_GetRevisionNumber")
	static function getRevisionNumber():Int;



	// SDL_video.h
	@:native("SDL_GetNumVideoDrivers")
	static function getNumVideoDrivers():Int;

	@:native("SDL_GetVideoDriver")
	static function getVideoDriver(index:Int):ConstCharStar;

	@:native("SDL_VideoInit")
	static function videoInit(driver_name:ConstCharStar):Int;

	@:native("SDL_VideoQuit")
	static function videoQuit():Void;

	@:native("SDL_GetCurrentVideoDriver")
	static function getCurrentVideoDriver():ConstCharStar;

	@:native("SDL_GetNumVideoDisplays")
	static function getNumVideoDisplays():Int;

	@:native("SDL_GetDisplayName")
	static function getDisplayName(displayIndex:Int):ConstCharStar;

	static inline function getDisplayBounds(displayIndex:Int):Rectangle {
		var result:Int;
		untyped __cpp__("SDL_Rect _rect; {1} = SDL_GetDisplayBounds({0}, &_rect)", displayIndex, result);
		return (result == 0) ? untyped __cpp__("_rect") : null;
	}

	static inline function getDisplayUsableBounds(displayIndex:Int):Rectangle {
		var result:Int;
		untyped __cpp__("SDL_Rect _rect; {1} = SDL_GetDisplayUsableBounds({0}, &_rect)", displayIndex, result);
		return (result == 0) ? untyped __cpp__("_rect") : null;
	}

	@:native("SDL_GetDisplayDPI")
	static function getDisplayDPI(displayIndex:Int, ddpi:Pointer<Float>, hdpi:Pointer<Float>, vdpi:Pointer<Float>):Int;

	@:native("SDL_GetDisplayOrientation")
	static function getDisplayOrientation(displayIndex:Int):DisplayOrientation;

	@:native("SDL_GetNumDisplayModes")
	static function getNumDisplayModes(displayIndex:Int):Int;

	static inline function getDisplayMode(displayIndex:Int, modeIndex:Int):DisplayMode {
		var result:Int;
		untyped __cpp__("SDL_DisplayMode _mode; {0} = SDL_GetDisplayMode({1}, {2}, &_mode)", result, displayIndex, modeIndex);
		return (result == 0) ? untyped __cpp__("_mode") : null;
	}

	static inline function getDesktopDisplayMode(displayIndex:Int):DisplayMode {
		var result:Int;
		untyped __cpp__("SDL_DisplayMode _mode; {0} = SDL_GetDesktopDisplayMode({1}, &_mode)", result, displayIndex);
		return (result == 0) ? untyped __cpp__("_mode") : null;
	}

	static inline function getCurrentDisplayMode(displayIndex:Int):DisplayMode {
		var result:Int;
		untyped __cpp__("SDL_DisplayMode _mode; {0} = SDL_GetCurrentDisplayMode({1}, &_mode)", result, displayIndex);
		return (result == 0) ? untyped __cpp__("_mode") : null;
	}

	@:native("SDL_GetClosestDisplayMode")
	static function getClosestDisplayMode(displayIndex:Int, mode:RawConstPointer<DisplayMode>, closest:Pointer<DisplayMode>):Pointer<DisplayMode>;

	static inline function getPointDisplayIndex(point:Point):Int {
		return untyped __cpp__("SDL_GetPointDisplayIndex(&{0})", point);
	}

	static inline function getRectDisplayIndex(rect:Rectangle):Int {
		return untyped __cpp__("SDL_GetRectDisplayIndex(&{0})", rect);
	}

	@:native("SDL_GetWindowDisplayIndex")
	static function getWindowDisplayIndex(window:Window):Int;

	static inline function setWindowDisplayMode(window:Window, mode:DisplayMode):Int {
		return untyped __cpp__("SDL_SetWindowDisplayMode({0}, &{1})", window, mode);
	}

	static inline function getWindowDisplayMode(window:Window):DisplayMode {
		var result:Int;
		untyped __cpp__("SDL_DisplayMode _mode; {0} = SDL_GetWindowDisplayMode({1}, &_mode)", result, window);
		return (result == 0) ? untyped __cpp__("_mode") : null;
	}

	static inline function getWindowICCProfile(window:Window, size:UInt64):Any {
		return untyped __cpp__("SDL_GetWindowICCProfile({0}, &{1})", window, size);
	}

	@:native("SDL_GetWindowPixelFormat")
	static function getWindowPixelFormat(window:Window):UInt32;

	@:native("SDL_CreateWindow")
	static function createWindow(title:ConstCharStar, x:Int, y:Int, w:Int, h:Int, flags:UInt32):Window;

	static inline function createWindowFrom(data:Any):Window {
		return untyped __cpp__("SDL_CreateWindowFrom({0})", data);
	}

	@:native("SDL_GetWindowID")
	static function getWindowID(window:Window):UInt32;

	@:native("SDL_GetWindowFromID")
	static function getWindowFromID(id:UInt32):Window;

	@:native("SDL_GetWindowFlags")
	static function getWindowFlags(window:Window):UInt32;

	@:native("SDL_SetWindowTitle")
	static function setWindowTitle(window:Window, title:ConstCharStar):Void;

	@:native("SDL_GetWindowTitle")
	static function getWindowTitle(window:Window):ConstCharStar;

	@:native("SDL_SetWindowIcon")
	static function setWindowIcon(window:Window, icon:Surface):Void;

	static inline function setWindowData(window:Window, name:ConstCharStar, userdata:Any):Any {
		return untyped __cpp__("SDL_SetWindowData({0}, {1}, {2})", window, name, userdata);
	}

	static inline function getWindowData(window:Window, name:ConstCharStar):Any {
		return untyped __cpp__("SDL_GetWindowData({0}, {1})", window, name);
	}

	@:native("SDL_SetWindowPosition")
	static function setWindowPosition(window:Window, x:Int, y:Int):Void;

	@:native("SDL_GetWindowPosition")
	@:noCompletion static function getWindowPosition(window:Window, x:Pointer<Int>, y:Pointer<Int>):Void;

	@:native("SDL_SetWindowSize")
	static function setWindowSize(window:Window, width:Int, height:Int):Void;

	@:native("SDL_GetWindowSize")
	static function getWindowSize(window:Window, width:Pointer<Int>, height:Pointer<Int>):Void;

	@:native("SDL_GetWindowBordersSize")
	static function getWindowBordersSize(window:Window, top:Pointer<Int>, left:Pointer<Int>, bottom:Pointer<Int>, right:Pointer<Int>):Int;

	@:native("SDL_GetWindowSizeInPixels")
	static function getWindowSizeInPixels(window:Window, width:Pointer<Int>, height:Pointer<Int>):Void;

	@:native("SDL_SetWindowMinimumSize")
	static function setWindowMinimumSize(window:Window, minWidth:Int, minHeight:Int):Void;

	@:native("SDL_GetWindowMinimumSize")
	static function getWindowMinimumSize(window:Window, width:Pointer<Int>, height:Pointer<Int>):Void;

	@:native("SDL_SetWindowMaximumSize")
	static function setWindowMaximumSize(window:Window, maxWidth:Int, maxHeight:Int):Void;

	@:native("SDL_GetWindowMaximumSize")
	static function getWindowMaximumSize(window:Window, width:Pointer<Int>, height:Pointer<Int>):Void;

	@:native("SDL_SetWindowBordered")
	static function setWindowBordered(window:Window, bordered:Boolean):Void;

	@:native("SDL_SetWindowResizable")
	static function setWindowResizable(window:Window, resizable:Boolean):Void;

	@:native("SDL_SetWindowAlwaysOnTop")
	static function setWindowAlwaysOnTop(window:Window, onTop:Boolean):Void;

	@:native("SDL_ShowWindow")
	static function showWindow(window:Window):Void;

	@:native("SDL_HideWindow")
	static function hideWindow(window:Window):Void;

	@:native("SDL_RaiseWindow")
	static function raiseWindow(window:Window):Void;

	@:native("SDL_MaximizeWindow")
	static function maximizeWindow(window:Window):Void;

	@:native("SDL_MinimizeWindow")
	static function minimizeWindow(window:Window):Void;

	@:native("SDL_RestoreWindow")
	static function restoreWindow(window:Window):Void;

	@:native("SDL_SetWindowFullscreen")
	static function setWindowFullscreen(window:Window, flags:UInt32):Int;

	@:native("SDL_HasWindowSurface")
	static function hasWindowSurface(window:Window):Boolean;

	@:native("SDL_GetWindowSurface")
	static function getWindowSurface(window:Window):Surface;

	@:native("SDL_UpdateWindowSurface")
	static function updateWindowSurface(window:Window):Int;

	@:native("SDL_UpdateWindowSurfaceRects")
	static function updateWindowSurfaceRects(window:Window, rects:RawConstPointer<Rectangle>, numrects:Int):Int;

	@:native("SDL_DestroyWindowSurface")
	static function destroyWindowSurface(window:Window):Int;

	@:native("SDL_SetWindowGrab")
	static function setWindowGrab(window:Window, grabbed:Boolean):Void;

	@:native("SDL_SetWindowKeyboardGrab")
	static function setWindowKeyboardGrab(window:Window, grabbed:Boolean):Void;

	@:native("SDL_SetWindowMouseGrab")
	static function setWindowMouseGrab(window:Window, grabbed:Boolean):Void;

	@:native("SDL_GetWindowGrab")
	static function getWindowGrab(window:Window):Boolean;

	@:native("SDL_GetWindowKeyboardGrab")
	static function getWindowKeyboardGrab(window:Window):Boolean;

	@:native("SDL_GetWindowMouseGrab")
	static function getWindowMouseGrab(window:Window):Boolean;

	@:native("SDL_GetGrabbedWindow")
	static function getGrabbedWindow():Window;

	static inline function setWindowMouseRect(window:Window, rect:Rectangle):Int {
		return untyped __cpp__("SDL_SetWindowMouseRect({0}, {1})", window, rect);
	}

	static inline function getWindowMouseRect(window:Window):Rectangle {
		return untyped __cpp__("SDL_GetWindowMouseRect({0})", window);
	}

	@:native("SDL_SetWindowBrightness")
	static function setWindowBrightness(window:Window, brightness:Float):Int;

	@:native("SDL_GetWindowBrightness")
	static function getWindowBrightness(window:Window):Float;

	@:native("SDL_SetWindowOpacity")
	static function setWindowOpacity(window:Window, opacity:Float):Int;

	static inline function getWindowOpacity(window:Window):Float {
		untyped __cpp__("float _opac; SDL_GetWindowOpacity({0}, &_opac)", window);
		return untyped __cpp__("_opac");
	}

	@:native("SDL_SetWindowModalFor")
	static function setWindowModalFor(modal_window:Window, parent_window:Window):Int;

	@:native("SDL_SetWindowInputFocus")
	static function setWindowInputFocus(window:Window):Int;

	@:native("SDL_SetWindowGammaRamp")
	static function setWindowGammaRamp(window:Window, red:RawConstPointer<UInt16>, green:RawConstPointer<UInt16>, blue:RawConstPointer<UInt16>):Int;

	@:native("SDL_GetWindowGammaRamp")
	static function getWindowGammaRamp(window:Window, red:Pointer<UInt16>, green:Pointer<UInt16>, blue:Pointer<UInt16>):Int;

	static inline function setWindowHitTest(window:Window, callback:HitTest, callbackData:Any):Int {
		return untyped __cpp__("SDL_SetWindowHitTest({0}, {1}, {2})", window, callback, callbackData);
	}

	@:native("SDL_FlashWindow")
	static function flashWindow(window:Window, operation:FlashOperation):Int;

	@:native("SDL_DestroyWindow")
	static function destroyWindow(window:Window):Void;

	@:native("SDL_IsScreenSaverEnabled")
	static function isScreenSaverEnabled():Boolean;

	@:native("SDL_EnableScreenSaver")
	static function enableScreenSaver():Void;

	@:native("SDL_DisableScreenSaver")
	static function disableScreenSaver():Void;

	@:native("SDL_GL_LoadLibrary")
	static function glLoadLibrary(path:ConstCharStar):Int;

	static inline function glGetProcAddress(proc:ConstCharStar):Any {
		return untyped __cpp__("SDL_GL_GetProcAddress({0})", proc);
	}

	@:native("SDL_GL_UnloadLibrary")
	static function glUnloadLibrary():Void;

	@:native("SDL_GL_ExtensionSupported")
	static function glExtensionSupported(extension:ConstCharStar):Boolean;

	@:native("SDL_GL_ResetAttributes")
	static function glResetAttributes():Void;

	@:native("SDL_GL_SetAttribute")
	static function glSetAttribute(attr:GlAttribute, value:Int):Int;

	static inline function glGetAttribute(attr:GlAttribute):Int {
		var result:Int;
		untyped __cpp__("int _val; {0} = SDL_GL_GetAttribute({1}, &_val)", result, attr);
		return (result == 0) ? untyped __cpp__("_val") : null;
	}

	@:native("SDL_GL_CreateContext")
	static function glCreateContext(window:Window):GlContext;

	@:native("SDL_GL_MakeCurrent")
	static function glMakeCurrent(window:Window, context:GlContext):Int;

	@:native("SDL_GL_GetCurrentWindow")
	static function glGetCurrentWindow():Window;

	@:native("SDL_GL_GetCurrentContext")
	static function glGetCurrentContext():GlContext;

	@:native("SDL_GL_GetDrawableSize")
	static function glGetDrawableSize(window:Window, w:Pointer<Int>, h:Pointer<Int>):Void;

	@:native("SDL_GL_SetSwapInterval")
	static function glSetSwapInterval(interval:Int):Int;

	@:native("SDL_GL_GetSwapInterval")
	static function glGetSwapInterval():Int;

	@:native("SDL_GL_SwapWindow")
	static function glSwapWindow(window:Window):Void;

	@:native("SDL_GL_DeleteContext")
	static function glDeleteContext(context:GlContext):Void;

	

	// SDL_blendmode.h
	@:native("SDL_ComposeCustomBlendMode")
	static function composeCustomBlendMode(srcColorFactor:BlendFactor, dstColorFactor:BlendFactor, colorOperation:BlendOperation, srcAlphaFactor:BlendFactor, dstAlphaFactor:BlendFactor, alphaOperation:BlendOperation):BlendMode;



	// SDL_render.h
	@:native("SDL_GetNumRenderDrivers")
	static function getNumRenderDrivers():Int;

	static inline function getRenderDriverInfo(index:Int):RendererInfo {
		var result:Int;
		untyped __cpp__("SDL_RendererInfo _info; {0} = SDL_GetRenderDriverInfo({1}, &_info)", result, index);
		return (result == 0) ? untyped __cpp__("_info") : null;
	}

	@:native("SDL_CreateWindowAndRenderer")
	static function createWindowAndRenderer(width:Int, height:Int, window_flags:UInt32, window:Pointer<Window>, renderer:Pointer<Renderer>):Int;

	@:native("SDL_CreateRenderer")
	static function createRenderer(window:Window, index:Int, flags:UInt32):Renderer;

	@:native("SDL_CreateSoftwareRenderer")
	static function createSoftwareRenderer(surface:Surface):Renderer;

	@:native("SDL_GetRenderer")
	static function getRenderer(window:Window):Renderer;

	@:native("SDL_RenderGetWindow")
	static function renderGetWindow(renderer:Renderer):Window;

	static inline function getRendererInfo(renderer:Renderer):RendererInfo {
		var result:Int;
		untyped __cpp__("SDL_RendererInfo _info; {0} = SDL_GetRendererInfo({1}, &_info)", result, renderer);
		return (result == 0) ? untyped __cpp__("_info") : null;
	}

	@:native("SDL_GetRendererOutputSize")
	static function getRendererOutputSize(renderer:Renderer, w:Pointer<Int>, h:Pointer<Int>):Int;

	@:native("SDL_CreateTexture")
	static function createTexture(renderer:Renderer, format:UInt32, access:Int, w:Int, h:Int):Texture;

	@:native("SDL_CreateTextureFromSurface")
	static function createTextureFromSurface(renderer:Renderer, surface:Surface):Texture;

	@:native("SDL_QueryTexture")
	static function queryTexture(texture:Texture, format:Pointer<UInt32>, access:Pointer<Int>, w:Pointer<Int>, h:Pointer<Int>):Int;

	@:native("SDL_SetTextureColorMod")
	static function setTextureColorMod(texture:Texture, r:UInt8, g:UInt8, b:UInt8):Int;

	@:native("SDL_GetTextureColorMod")
	static function getTextureColorMod(texture:Texture, r:Pointer<UInt8>, g:Pointer<UInt8>, b:Pointer<UInt8>):Int;

	@:native("SDL_SetTextureAlphaMod")
	static function setTextureAlphaMod(texture:Texture, alpha:UInt8):Int;

	static inline function getTextureAlphaMod(texture:Texture):UInt8 {
		var result:Int;
		untyped __cpp__("unsigned char _mod; {0} = SDL_GetTextureAlphaMod({1}, &_mod)", result, texture);
		return (result == 0) ? untyped __cpp__("_mod") : null;
	}

	@:native("SDL_SetTextureBlendMode")
	static function setTextureBlendMode(texture:Texture, blendMode:BlendMode):Int;

	static inline function getTextureBlendMode(texture:Texture):BlendMode {
		var result:Int;
		untyped __cpp__("SDL_BlendMode _mode; {0} = SDL_GetTextureBlendMode({1}, &_mode)", result, texture);
		return (result == 0) ? untyped __cpp__("_mode") : null;
	}

	@:native("SDL_SetTextureScaleMode")
	static function setTextureScaleMode(texture:Texture, scaleMode:ScaleMode):Int;

	static inline function getTextureScaleMode(texture:Texture):ScaleMode {
		var result:Int;
		untyped __cpp__("SDL_ScaleMode _mode; {0} = SDL_GetTextureScaleMode({1}, &_mode)", result, texture);
		return (result == 0) ? untyped __cpp__("_mode") : null;
	}

	static inline function setTextureUserData(texture:Texture, userdata:Any):Int {
		return untyped __cpp__("SDL_SetTextureUserData({0}, {1})", texture, userdata);
	}

	static inline function getTextureUserData<T>(texture:Texture):T {
		return cast untyped __cpp__("SDL_GetTextureUserData({0})", texture);
	}

	@:native("SDL_UpdateTexture")
	static function updateTexture(texture:Texture, rect:RawConstPointer<Rectangle>, pixels:RawConstPointer<cpp.Void>, pitch:Int):Int;

	@:native("SDL_UpdateYUVTexture")
	static function updateYUVTexture(texture:Texture, rect:RawConstPointer<Rectangle>, Yplane:RawConstPointer<UInt8>, Ypitch:Int, Uplane:RawConstPointer<UInt8>, Upitch:Int, Vplane:RawConstPointer<UInt8>, Vpitch:Int):Int;

	@:native("SDL_UpdateNVTexture")
	static function updateNVTexture(texture:Texture, rect:RawConstPointer<Rectangle>, Yplane:RawConstPointer<UInt8>, Ypitch:Int, UVplane:RawConstPointer<UInt8>, UVpitch:Int):Int;

	@:native("SDL_LockTexture")
	static function lockTexture(texture:Texture, rect:RawConstPointer<Rectangle>, pixels:Pointer<Pointer<cpp.Void>>, pitch:Pointer<Int>):Int;

	@:native("SDL_LockTextureToSurface")
	static function lockTextureToSurface(texture:Texture, rect:RawConstPointer<Rectangle>, surface:Pointer<Pointer<Surface>>):Int;

	@:native("SDL_UnlockTexture")
	static function unlockTexture(texture:Texture):Void;

	@:native("SDL_RenderTargetSupported")
	static function renderTargetSupported(renderer:Renderer):Boolean;

	@:native("SDL_SetRenderTarget")
	static function setRenderTarget(renderer:Renderer, texture:Texture):Int;

	@:native("SDL_GetRenderTarget")
	static function getRenderTarget(renderer:Renderer):Texture;

	@:native("SDL_RenderSetLogicalSize")
	static function renderSetLogicalSize(renderer:Renderer, w:Int, h:Int):Int;

	@:native("SDL_RenderGetLogicalSize")
	static function renderGetLogicalSize(renderer:Renderer, w:Pointer<Int>, h:Pointer<Int>):Void;

	@:native("SDL_RenderSetIntegerScale")
	static function renderSetIntegerScale(renderer:Renderer, enable:Boolean):Int;

	@:native("SDL_RenderGetIntegerScale")
	static function renderGetIntegerScale(renderer:Renderer):Boolean;

	@:native("SDL_RenderSetViewport")
	@:noCompletion static function renderSetViewport(renderer:Renderer, rect:RawConstPointer<Rectangle>):Int;

	@:native("SDL_RenderGetViewport")
	@:noCompletion static function renderGetViewport(renderer:Renderer, rect:Pointer<Rectangle>):Void;

	@:native("SDL_RenderSetClipRect")
	@:noCompletion static function renderSetClipRect(renderer:Renderer, rect:RawConstPointer<Rectangle>):Int;

	@:native("SDL_RenderGetClipRect")
	@:noCompletion static function renderGetClipRect(renderer:Renderer, rect:Pointer<Rectangle>):Void;

	@:native("SDL_RenderIsClipEnabled")
	static function renderIsClipEnabled(renderer:Renderer):Boolean;

	@:native("SDL_RenderSetScale")
	static function renderSetScale(renderer:Renderer, scaleX:Float, scaleY:Float):Int;

	@:native("SDL_RenderGetScale")
	@:noCompletion static function renderGetScale(renderer:Renderer, scaleX:Pointer<Float>, scaleY:Pointer<Float>):Void;

	@:native("SDL_RenderWindowToLogical")
	@:noCompletion static function renderWindowToLogical(renderer:Renderer, windowX:Int, windowY:Int, logicalX:Pointer<Float>, logicalY:Pointer<Float>):Void;

	@:native("SDL_RenderLogicalToWindow")
	@:noCompletion static function renderLogicalToWindow(renderer:Renderer, logicalX:Float, logicalY:Float, windowX:Pointer<Int>, windowY:Pointer<Int>):Void;

	@:native("SDL_SetRenderDrawColor")
	static function setRenderDrawColor(renderer:Renderer, r:UInt8, g:UInt8, b:UInt8, a:UInt8):Int;

	@:native("SDL_GetRenderDrawColor")
	@:noCompletion static function getRenderDrawColor(renderer:Renderer, r:Pointer<UInt8>, g:Pointer<UInt8>, b:Pointer<UInt8>, a:Pointer<UInt8>):Int;

	@:native("SDL_SetRenderDrawBlendMode")
	static function setRenderDrawBlendMode(renderer:Renderer, blendMode:BlendMode):Int;

	@:native("SDL_GetRenderDrawBlendMode")
	@:noCompletion static function getRenderDrawBlendMode(renderer:Renderer, blendMode:Pointer<BlendMode>):Int;

	@:native("SDL_RenderClear")
	static function renderClear(renderer:Renderer):Int;

	@:native("SDL_RenderDrawPoint")
	static function renderDrawPoint(renderer:Renderer, x:Int, y:Int):Int;

	@:native("SDL_RenderDrawPoints")
	@:noCompletion static function renderDrawPoints(renderer:Renderer, points:RawConstPointer<Point>, count:Int):Int;

	@:native("SDL_RenderDrawLine")
	static function renderDrawLine(renderer:Renderer, x1:Int, y1:Int, x2:Int, y2:Int):Int;

	@:native("SDL_RenderDrawLines")
	@:noCompletion static function renderDrawLines(renderer:Renderer, points:RawConstPointer<Point>, count:Int):Int;

	@:native("SDL_RenderDrawRect")
	@:noCompletion static function renderDrawRect(renderer:Renderer, rect:RawConstPointer<Rectangle>):Int;

	@:native("SDL_RenderDrawRects")
	@:noCompletion static function renderDrawRects(renderer:Renderer, rects:RawConstPointer<Rectangle>, count:Int):Int;

	@:native("SDL_RenderFillRect")
	@:noCompletion static function renderFillRect(renderer:Renderer, rect:RawConstPointer<Rectangle>):Int;

	@:native("SDL_RenderFillRects")
	@:noCompletion static function renderFillRects(renderer:Renderer, rects:RawConstPointer<Rectangle>, count:Int):Int;

	@:native("SDL_RenderCopy")
	@:noCompletion static function renderCopy(renderer:Renderer, texture:Texture, srcrect:RawConstPointer<Rectangle>, dstrect:RawConstPointer<Rectangle>):Int;

	@:native("SDL_RenderCopyEx")
	@:noCompletion static function renderCopyEx(renderer:Renderer, texture:Texture, srcrect:RawConstPointer<Rectangle>, dstrect:RawConstPointer<Rectangle>, angle:cpp.Float64, center:RawConstPointer<Point>, flip:RendererFlip):Int;

	@:native("SDL_RenderDrawPointF")
	static function renderDrawPointF(renderer:Renderer, x:Float, y:Float):Int;

	@:native("SDL_RenderDrawPointsF")
	@:noCompletion static function renderDrawPointsF(renderer:Renderer, points:RawConstPointer<FloatPoint>, count:Int):Int;

	@:native("SDL_RenderDrawLineF")
	static function renderDrawLineF(renderer:Renderer, x1:Float, y1:Float, x2:Float, y2:Float):Int;

	@:native("SDL_RenderDrawLinesF")
	@:noCompletion static function renderDrawLinesF(renderer:Renderer, points:RawConstPointer<FloatPoint>, count:Int):Int;

	@:native("SDL_RenderDrawRectF")
	@:noCompletion static function renderDrawRectF(renderer:Renderer, rect:RawConstPointer<FloatRectangle>):Int;

	@:native("SDL_RenderDrawRectsF")
	@:noCompletion static function renderDrawRectsF(renderer:Renderer, rects:RawConstPointer<FloatRectangle>, count:Int):Int;

	@:native("SDL_RenderFillRectF")
	@:noCompletion static function renderFillRectF(renderer:Renderer, rect:RawConstPointer<FloatRectangle>):Int;

	@:native("SDL_RenderFillRectsF")
	@:noCompletion static function renderFillRectsF(renderer:Renderer, rects:RawConstPointer<FloatRectangle>, count:Int):Int;

	@:native("SDL_RenderCopyF")
	@:noCompletion static function renderCopyF(renderer:Renderer, texture:Texture, srcrect:RawConstPointer<Rectangle>, dstrect:RawConstPointer<FloatRectangle>):Int;

	@:native("SDL_RenderCopyExF")
	@:noCompletion static function renderCopyExF(renderer:Renderer, texture:Texture, srcrect:RawConstPointer<Rectangle>, dstrect:RawConstPointer<FloatRectangle>, angle:cpp.Float64, center:RawConstPointer<FloatPoint>, flip:RendererFlip):Int;

	@:native("SDL_RenderGeometry")
	@:noCompletion static function renderGeometry(renderer:Renderer, texture:Texture, vertices:RawConstPointer<Vertex>, num_vertices:Int, indices:RawConstPointer<Int>, num_indices:Int):Int;

	@:native("SDL_RenderGeometryRaw")
	@:noCompletion static function renderGeometryRaw(renderer:Renderer, texture:Texture, xy:RawConstPointer<Float>, xy_stride:Int, color:RawConstPointer<Color>, color_stride:Int, uv:RawConstPointer<Float>, uv_stride:Int, num_vertices:Int, indices:RawConstPointer<cpp.Void>, num_indices:Int, size_indices:Int):Int;

	@:native("SDL_RenderReadPixels")
	@:noCompletion static function renderReadPixels(renderer:Renderer, rect:RawConstPointer<Rectangle>, format:UInt32, pixels:Pointer<cpp.Void>, pitch:Int):Int;

	@:native("SDL_RenderPresent")
	static function renderPresent(renderer:Renderer):Void;

	@:native("SDL_DestroyTexture")
	static function destroyTexture(texture:Texture):Void;

	@:native("SDL_DestroyRenderer")
	static function destroyRenderer(renderer:Renderer):Void;

	@:native("SDL_RenderFlush")
	static function renderFlush(renderer:Renderer):Int;

	@:native("SDL_GL_BindTexture")
	@:noCompletion static function glBindTexture(texture:Texture, texw:Pointer<Float>, texh:Pointer<Float>):Int;

	@:native("SDL_GL_UnbindTexture")
	static function glUnbindTexture(texture:Texture):Int;

	@:native("SDL_RenderGetMetalLayer")
	@:noCompletion static function renderGetMetalLayer(renderer:Renderer):Pointer<cpp.Void>;

	@:native("SDL_RenderGetMetalCommandEncoder")
	@:noCompletion static function renderGetMetalCommandEncoder(renderer:Renderer):Pointer<cpp.Void>;

	@:native("SDL_RenderSetVSync")
	static function renderSetVSync(renderer:Renderer, vsync:Int):Int;



	// extras
	@:native("SDL_Event")
	static inline function createEventPtr():Event {
		var event:Event = null;
		untyped __cpp__('SDL_Event __sdl_ev__; {0} = &__sdl_ev__', event);
		return event;
	}
}

@:keep
enum abstract PixelType(UInt32) from UInt32 to UInt32 {
	var UNKNOWN = 0;
	var INDEX1;
	var INDEX4;
	var INDEX8;
	var PACKED8;
	var PACKED16;
	var PACKED32;
	var ARRAYU8;
	var ARRAYU16;
	var ARRAYU32;
	var ARRAYF16;
	var ARRAYF32;
}

@:keep
enum abstract BitmapOrder(UInt32) from UInt32 to UInt32 {
	var ORDER_NONE = 0;
	var ORDER_4321;
	var ORDER_1234;
}

@:keep
enum abstract PackedOrder(UInt32) from UInt32 to UInt32 {
	var NONE = 0;
	var XRGB;
	var RGBX;
	var ARGB;
	var RGBA;
	var XBGR;
	var BGRX;
	var ABGR;
	var BGRA;
}

@:keep
enum abstract ArrayOrder(UInt32) from UInt32 to UInt32 {
	var NONE = 0;
	var RGB;
	var RGBA;
	var ARGB;
	var BGR;
	var BGRA;
	var ABGR;
}

@:keep
enum abstract PackedLayout(UInt32) from UInt32 to UInt32 {
	var LAYOUT_NONE = 0;
	var LAYOUT_332;
	var LAYOUT_4444;
	var LAYOUT_1555;
	var LAYOUT_5551;
	var LAYOUT_565;
	var LAYOUT_8888;
	var LAYOUT_2101010;
	var LAYOUT_1010102;
}

// i almost went insane making this fucking enum
@:keep
enum abstract PixelFormatEnum(UInt32) from UInt32 to UInt32 {
	private static inline function definePixelFormat(type:Int, order:Int, layout:Int, bits:Int, bytes:Int) {
		return (1 << 28) | ((type) << 24) | ((order) << 20) | ((layout) << 16) | ((bits) << 8) | ((bytes) << 0);
	}

	var UNKNOWN = 0;
	var INDEX1LSB = definePixelFormat(PixelType.INDEX1, BitmapOrder.ORDER_4321, 0, 1, 0);
	var INDEX1MSB = definePixelFormat(PixelType.INDEX1, BitmapOrder.ORDER_1234, 0, 1, 0);
	var INDEX4LSB = definePixelFormat(PixelType.INDEX4, BitmapOrder.ORDER_4321, 0, 4, 0);
	var INDEX4MSB = definePixelFormat(PixelType.INDEX4, BitmapOrder.ORDER_1234, 0, 4, 0);
	var INDEX8 = definePixelFormat(PixelType.INDEX8, 0, 0, 8, 1);
	var RGB332 = definePixelFormat(PixelType.PACKED8, PackedOrder.XRGB, PackedLayout.LAYOUT_332, 8, 1);
	var XRGB4444 = definePixelFormat(PixelType.PACKED16, PackedOrder.XRGB, PackedLayout.LAYOUT_4444, 12, 2);
	var RGB444 = XRGB4444;
	var XBGR4444 = definePixelFormat(PixelType.PACKED16, PackedOrder.XBGR, PackedLayout.LAYOUT_4444, 12, 2);
	var BGR444 = XBGR4444;
	var XRGB1555 = definePixelFormat(PixelType.PACKED16, PackedOrder.XRGB, PackedLayout.LAYOUT_1555, 15, 2);
	var RGB555 = XRGB1555;
	var XBGR1555 = definePixelFormat(PixelType.PACKED16, PackedOrder.XBGR, PackedLayout.LAYOUT_1555, 15, 2);
	var BGR555 = XBGR1555;
	var ARGB4444 = definePixelFormat(PixelType.PACKED16, PackedOrder.ARGB, PackedLayout.LAYOUT_4444, 16, 2);
	var RGBA4444 = definePixelFormat(PixelType.PACKED16, PackedOrder.RGBA, PackedLayout.LAYOUT_4444, 16, 2);
	var ABGR4444 = definePixelFormat(PixelType.PACKED16, PackedOrder.ABGR, PackedLayout.LAYOUT_4444, 16, 2);
	var BGRA4444 = definePixelFormat(PixelType.PACKED16, PackedOrder.BGRA, PackedLayout.LAYOUT_4444, 16, 2);
	var ARGB1555 = definePixelFormat(PixelType.PACKED16, PackedOrder.ARGB, PackedLayout.LAYOUT_1555, 16, 2);
	var RGBA5551 = definePixelFormat(PixelType.PACKED16, PackedOrder.RGBA, PackedLayout.LAYOUT_5551, 16, 2);
	var ABGR1555 = definePixelFormat(PixelType.PACKED16, PackedOrder.ABGR, PackedLayout.LAYOUT_1555, 16, 2);
	var BGRA5551 = definePixelFormat(PixelType.PACKED16, PackedOrder.BGRA, PackedLayout.LAYOUT_5551, 16, 2);
	var RGB565 = definePixelFormat(PixelType.PACKED16, PackedOrder.XRGB, PackedLayout.LAYOUT_565, 16, 2);
	var BGR565 = definePixelFormat(PixelType.PACKED16, PackedOrder.XBGR, PackedLayout.LAYOUT_565, 16, 2);
	var RGB24 = definePixelFormat(PixelType.ARRAYU8, ArrayOrder.RGB, 0, 24, 3);
	var BGR24 = definePixelFormat(PixelType.ARRAYU8, ArrayOrder.BGR, 0, 24, 3);
	var XRGB8888 = definePixelFormat(PixelType.PACKED32, PackedOrder.XRGB, PackedLayout.LAYOUT_8888, 24, 4);
	var RGB888 = XRGB8888;
	var RGBX8888 = definePixelFormat(PixelType.PACKED32, PackedOrder.RGBX, PackedLayout.LAYOUT_8888, 24, 4);
	var XBGR8888 = definePixelFormat(PixelType.PACKED32, PackedOrder.XBGR, PackedLayout.LAYOUT_8888, 24, 4);
	var BGR888 = XBGR8888;
	var BGRX8888 = definePixelFormat(PixelType.PACKED32, PackedOrder.BGRX, PackedLayout.LAYOUT_8888, 24, 4);
	var ARGB8888 = definePixelFormat(PixelType.PACKED32, PackedOrder.ARGB, PackedLayout.LAYOUT_8888, 32, 4);
	var RGBA8888 = definePixelFormat(PixelType.PACKED32, PackedOrder.RGBA, PackedLayout.LAYOUT_8888, 32, 4);
	var ABGR8888 = definePixelFormat(PixelType.PACKED32, PackedOrder.ABGR, PackedLayout.LAYOUT_8888, 32, 4);
	var BGRA8888 = definePixelFormat(PixelType.PACKED32, PackedOrder.BGRA, PackedLayout.LAYOUT_8888, 32, 4);
	var ARGB2101010 = definePixelFormat(PixelType.PACKED32, PackedOrder.ARGB, PackedLayout.LAYOUT_2101010, 32, 4);
}


@:keep
enum abstract TextureScaleMode(Int) from Int to Int {
	/** Nearest pixel sampling **/
	var NEAREST = 0;
	/** Linear filtering **/ 
    var LINEAR;
	/** Anisotropic filtering **/
    var ANISOTROPIC;
}

@:keep
@:native("SDL_Point")
@:include("vendor/include/Headers.h")
@:structAccess
extern class Point {
	public var x:Int;
	public var y:Int;

	public static inline function create(x:Int, y:Int):Point {
		return cast untyped __cpp__("SDL_Point{ (int){0}, (int){1} }", x, y);
	}
}

@:keep
@:native("SDL_FPoint")
@:include("vendor/include/Headers.h")
@:structAccess
extern class FloatPoint {
	public var x:Float;
	public var y:Float;

	public static inline function create(x:Float, y:Float):Point {
		return cast untyped __cpp__("SDL_FPoint{ (float){0}, (float){1} }", x, y);
	}
}

@:keep
@:native("SDL_Rect")
@:include("vendor/include/Headers.h")
@:structAccess
extern class Rectangle {
	public var x:Int;
	public var y:Int;
	public var w:Int;
	public var h:Int;

	public static inline function create(x:Int, y:Int, w:Int, h:Int):Rectangle {
		return cast untyped __cpp__("SDL_Rect{ (int){0}, (int){1}, (int){2}, (int){3} }", x, y, w, h);
	}
}

@:keep
@:native("SDL_Rect")
@:include("vendor/include/Headers.h")
@:structAccess
extern class FloatRectangle {
	public var x:Float;
	public var y:Float;
	public var w:Float;
	public var h:Float;

	public static inline function create(x:Float, y:Float, w:Float, h:Float):FloatRectangle {
		return cast untyped __cpp__("SDL_Rect{ (float){0}, (float){1}, (float){2}, (float){3} }", x, y, w, h);
	}
}

@:keep
@:native("SDL_Color")
@:include("vendor/include/Headers.h")
@:structAccess
extern class Color {
	public var r:UInt8;
	public var g:UInt8;
	public var b:UInt8;
	public var a:UInt8;

	public static inline function create(r:UInt8, g:UInt8, b:UInt8, a:UInt8):Color {
		return cast untyped __cpp__("SDL_Color{ (unsigned char){0}, (unsigned char){1}, (unsigned char){2}, (unsigned char){3} }", r, g, b, a);
	}
}

typedef Double = cpp.Float64;
