package sdl;

import cpp.RawPointer;
import cpp.ConstCharStar;

@:keep
enum abstract Boolean(UInt8) from UInt8 to UInt8 {
	var FALSE = 0;
	var TRUE = 1;
}

// SDL.h
@:keep
enum abstract InitFlags(UInt32) to UInt32 from UInt32 {
	var VIDEO = 0x00000020;
	var AUDIO = 0x00000010;
	var JOYSTICK = 0x00000200;
	var HAPTIC = 0x00001000;
	var CONTROLLER = 0x00002000;
	var EVENTS = 0x00004000;
	var SENSOR = 0x00004000;
	var NOPARACHUTE = 0x00100000;
	var EVERYTHING = 0x00000020 | 0x00000010 | 0x00000200 | 0x00001000 | 0x00002000 | 0x00004000 | 0x00100000;
}



// SDL_hints.h
enum abstract Hints(ConstCharStar) to ConstCharStar from ConstCharStar {
	var ACCELEROMETER_AS_JOYSTICK = cast "SDL_ACCELEROMETER_AS_JOYSTICK";
	var ALLOW_ALT_TAB_WHILE_GRABBED = cast "SDL_ALLOW_ALT_TAB_WHILE_GRABBED";
	var ALLOW_TOPMOST = cast "SDL_ALLOW_TOPMOST";
	var ANDROID_APK_EXPANSION_MAIN_FILE_VERSION = cast "SDL_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION";
	var ANDROID_APK_EXPANSION_PATCH_FILE_VERSION = cast "SDL_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION";
	var ANDROID_BLOCK_ON_PAUSE = cast "SDL_ANDROID_BLOCK_ON_PAUSE";
	var ANDROID_BLOCK_ON_PAUSE_PAUSEAUDIO = cast "SDL_ANDROID_BLOCK_ON_PAUSE_PAUSEAUDIO";
	var ANDROID_TRAP_BACK_BUTTON = cast "SDL_ANDROID_TRAP_BACK_BUTTON";
	var APP_NAME = cast "SDL_APP_NAME";
	var APPLE_TV_CONTROLLER_UI_EVENTS = cast "SDL_APPLE_TV_CONTROLLER_UI_EVENTS";
	var APPLE_TV_REMOTE_ALLOW_ROTATION = cast "SDL_APPLE_TV_REMOTE_ALLOW_ROTATION";
	var AUDIO_CATEGORY = cast "SDL_AUDIO_CATEGORY";
	var AUDIO_DEVICE_APP_NAME = cast "SDL_AUDIO_DEVICE_APP_NAME";
	var AUDIO_DEVICE_STREAM_NAME = cast "SDL_AUDIO_DEVICE_STREAM_NAME";
	var AUDIO_DEVICE_STREAM_ROLE = cast "SDL_AUDIO_DEVICE_STREAM_ROLE";
	var AUDIO_RESAMPLING_MODE = cast "SDL_AUDIO_RESAMPLING_MODE";
	var AUTO_UPDATE_JOYSTICKS = cast "SDL_AUTO_UPDATE_JOYSTICKS";
	var AUTO_UPDATE_SENSORS = cast "SDL_AUTO_UPDATE_SENSORS";
	var BMP_SAVE_LEGACY_FORMAT = cast "SDL_BMP_SAVE_LEGACY_FORMAT";
	var DISPLAY_USABLE_BOUNDS = cast "SDL_DISPLAY_USABLE_BOUNDS";
	var EMSCRIPTEN_ASYNCIFY = cast "SDL_EMSCRIPTEN_ASYNCIFY";
	var EMSCRIPTEN_KEYBOARD_ELEMENT = cast "SDL_EMSCRIPTEN_KEYBOARD_ELEMENT";
	var ENABLE_SCREEN_KEYBOARD = cast "SDL_ENABLE_SCREEN_KEYBOARD";
	var ENABLE_STEAM_CONTROLLERS = cast "SDL_ENABLE_STEAM_CONTROLLERS";
	var EVENT_LOGGING = cast "SDL_EVENT_LOGGING";
	var FORCE_RAISEWINDOW = cast "SDL_HINT_FORCE_RAISEWINDOW";
	var FRAMEBUFFER_ACCELERATION = cast "SDL_FRAMEBUFFER_ACCELERATION";
	var GAMECONTROLLERCONFIG = cast "SDL_GAMECONTROLLERCONFIG";
	var GAMECONTROLLERCONFIG_FILE = cast "SDL_GAMECONTROLLERCONFIG_FILE";
	var GAMECONTROLLERTYPE = cast "SDL_GAMECONTROLLERTYPE";
	var GAMECONTROLLER_IGNORE_DEVICES = cast "SDL_GAMECONTROLLER_IGNORE_DEVICES";
	var GAMECONTROLLER_IGNORE_DEVICES_EXCEPT = cast "SDL_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT";
	var GAMECONTROLLER_USE_BUTTON_LABELS = cast "SDL_GAMECONTROLLER_USE_BUTTON_LABELS";
	var GRAB_KEYBOARD = cast "SDL_GRAB_KEYBOARD";
	var HIDAPI_IGNORE_DEVICES = cast "SDL_HIDAPI_IGNORE_DEVICES";
	var IDLE_TIMER_DISABLED = cast "SDL_IOS_IDLE_TIMER_DISABLED";
	var IME_INTERNAL_EDITING = cast "SDL_IME_INTERNAL_EDITING";
	var IME_SHOW_UI = cast "SDL_IME_SHOW_UI";
	var IME_SUPPORT_EXTENDED_TEXT = cast "SDL_IME_SUPPORT_EXTENDED_TEXT";
	var IOS_HIDE_HOME_INDICATOR = cast "SDL_IOS_HIDE_HOME_INDICATOR";
	var JOYSTICK_ALLOW_BACKGROUND_EVENTS = cast "SDL_JOYSTICK_ALLOW_BACKGROUND_EVENTS";
	var JOYSTICK_ARCADESTICK_DEVICES = cast "SDL_JOYSTICK_ARCADESTICK_DEVICES";
	var JOYSTICK_ARCADESTICK_DEVICES_EXCLUDED = cast "SDL_JOYSTICK_ARCADESTICK_DEVICES_EXCLUDED";
	var JOYSTICK_BLACKLIST_DEVICES = cast "SDL_JOYSTICK_BLACKLIST_DEVICES";
	var JOYSTICK_BLACKLIST_DEVICES_EXCLUDED = cast "SDL_JOYSTICK_BLACKLIST_DEVICES_EXCLUDED";
	var JOYSTICK_FLIGHTSTICK_DEVICES = cast "SDL_JOYSTICK_FLIGHTSTICK_DEVICES";
	var JOYSTICK_FLIGHTSTICK_DEVICES_EXCLUDED = cast "SDL_JOYSTICK_FLIGHTSTICK_DEVICES_EXCLUDED";
	var JOYSTICK_GAMECUBE_DEVICES = cast "SDL_JOYSTICK_GAMECUBE_DEVICES";
	var JOYSTICK_GAMECUBE_DEVICES_EXCLUDED = cast "SDL_JOYSTICK_GAMECUBE_DEVICES_EXCLUDED";
	var JOYSTICK_HIDAPI = cast "SDL_JOYSTICK_HIDAPI";
	var JOYSTICK_HIDAPI_GAMECUBE = cast "SDL_JOYSTICK_HIDAPI_GAMECUBE";
	var JOYSTICK_GAMECUBE_RUMBLE_BRAKE = cast "SDL_JOYSTICK_GAMECUBE_RUMBLE_BRAKE";
	var JOYSTICK_HIDAPI_JOY_CONS = cast "SDL_JOYSTICK_HIDAPI_JOY_CONS";
	var JOYSTICK_HIDAPI_COMBINE_JOY_CONS = cast "SDL_JOYSTICK_HIDAPI_COMBINE_JOY_CONS";
	var JOYSTICK_HIDAPI_VERTICAL_JOY_CONS = cast "SDL_JOYSTICK_HIDAPI_VERTICAL_JOY_CONS";
	var JOYSTICK_HIDAPI_LUNA = cast "SDL_JOYSTICK_HIDAPI_LUNA";
	var JOYSTICK_HIDAPI_NINTENDO_CLASSIC = cast "SDL_JOYSTICK_HIDAPI_NINTENDO_CLASSIC";
	var JOYSTICK_HIDAPI_SHIELD = cast "SDL_JOYSTICK_HIDAPI_SHIELD";
	var JOYSTICK_HIDAPI_PS3 = cast "SDL_JOYSTICK_HIDAPI_PS3";
	var JOYSTICK_HIDAPI_PS4 = cast "SDL_JOYSTICK_HIDAPI_PS4";
	var JOYSTICK_HIDAPI_PS4_RUMBLE = cast "SDL_JOYSTICK_HIDAPI_PS4_RUMBLE";
	var JOYSTICK_HIDAPI_PS5 = cast "SDL_JOYSTICK_HIDAPI_PS5";
	var JOYSTICK_HIDAPI_PS5_PLAYER_LED = cast "SDL_JOYSTICK_HIDAPI_PS5_PLAYER_LED";
	var JOYSTICK_HIDAPI_PS5_RUMBLE = cast "SDL_JOYSTICK_HIDAPI_PS5_RUMBLE";
	var JOYSTICK_HIDAPI_STADIA = cast "SDL_JOYSTICK_HIDAPI_STADIA";
	var JOYSTICK_HIDAPI_STEAM = cast "SDL_JOYSTICK_HIDAPI_STEAM";
	var JOYSTICK_HIDAPI_STEAMDECK = cast "SDL_JOYSTICK_HIDAPI_STEAMDECK";
	var JOYSTICK_HIDAPI_SWITCH = cast "SDL_JOYSTICK_HIDAPI_SWITCH";
	var JOYSTICK_HIDAPI_SWITCH_HOME_LED = cast "SDL_JOYSTICK_HIDAPI_SWITCH_HOME_LED";
	var JOYSTICK_HIDAPI_JOYCON_HOME_LED = cast "SDL_JOYSTICK_HIDAPI_JOYCON_HOME_LED";
	var JOYSTICK_HIDAPI_SWITCH_PLAYER_LED = cast "SDL_JOYSTICK_HIDAPI_SWITCH_PLAYER_LED";
	var JOYSTICK_HIDAPI_WII = cast "SDL_JOYSTICK_HIDAPI_WII";
	var JOYSTICK_HIDAPI_WII_PLAYER_LED = cast "SDL_JOYSTICK_HIDAPI_WII_PLAYER_LED";
	var JOYSTICK_HIDAPI_XBOX = cast "SDL_JOYSTICK_HIDAPI_XBOX";
	var JOYSTICK_HIDAPI_XBOX_360 = cast "SDL_JOYSTICK_HIDAPI_XBOX_360";
	var JOYSTICK_HIDAPI_XBOX_360_PLAYER_LED = cast "SDL_JOYSTICK_HIDAPI_XBOX_360_PLAYER_LED";
	var JOYSTICK_HIDAPI_XBOX_360_WIRELESS = cast "SDL_JOYSTICK_HIDAPI_XBOX_360_WIRELESS";
	var JOYSTICK_HIDAPI_XBOX_ONE = cast "SDL_JOYSTICK_HIDAPI_XBOX_ONE";
	var JOYSTICK_HIDAPI_XBOX_ONE_HOME_LED = cast "SDL_JOYSTICK_HIDAPI_XBOX_ONE_HOME_LED";
	var JOYSTICK_IOKIT = cast "SDL_JOYSTICK_IOKIT";
	var JOYSTICK_MFI = cast "SDL_JOYSTICK_MFI";
	var JOYSTICK_RAWINPUT = cast "SDL_JOYSTICK_RAWINPUT";
	var JOYSTICK_RAWINPUT_CORRELATE_XINPUT = cast "SDL_JOYSTICK_RAWINPUT_CORRELATE_XINPUT";
	var JOYSTICK_ROG_CHAKRAM = cast "SDL_JOYSTICK_ROG_CHAKRAM";
	var JOYSTICK_THREAD = cast "SDL_JOYSTICK_THREAD";
	var JOYSTICK_THROTTLE_DEVICES = cast "SDL_JOYSTICK_THROTTLE_DEVICES";
	var JOYSTICK_THROTTLE_DEVICES_EXCLUDED = cast "SDL_JOYSTICK_THROTTLE_DEVICES_EXCLUDED";
	var JOYSTICK_WGI = cast "SDL_JOYSTICK_WGI";
	var JOYSTICK_WHEEL_DEVICES = cast "SDL_JOYSTICK_WHEEL_DEVICES";
	var JOYSTICK_WHEEL_DEVICES_EXCLUDED = cast "SDL_JOYSTICK_WHEEL_DEVICES_EXCLUDED";
	var JOYSTICK_ZERO_CENTERED_DEVICES = cast "SDL_JOYSTICK_ZERO_CENTERED_DEVICES";
	var KMSDRM_REQUIRE_DRM_MASTER = cast "SDL_KMSDRM_REQUIRE_DRM_MASTER";
	var JOYSTICK_DEVICE = cast "SDL_JOYSTICK_DEVICE";
	var LINUX_DIGITAL_HATS = cast "SDL_LINUX_DIGITAL_HATS";
	var LINUX_HAT_DEADZONES = cast "SDL_LINUX_HAT_DEADZONES";
	var LINUX_JOYSTICK_CLASSIC = cast "SDL_LINUX_JOYSTICK_CLASSIC";
	var LINUX_JOYSTICK_DEADZONES = cast "SDL_LINUX_JOYSTICK_DEADZONES";
	var MAC_BACKGROUND_APP = cast "SDL_MAC_BACKGROUND_APP";
	var MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK = cast "SDL_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK";
	var MAC_OPENGL_ASYNC_DISPATCH = cast "SDL_MAC_OPENGL_ASYNC_DISPATCH";
	var MOUSE_DOUBLE_CLICK_RADIUS = cast "SDL_MOUSE_DOUBLE_CLICK_RADIUS";
	var MOUSE_DOUBLE_CLICK_TIME = cast "SDL_MOUSE_DOUBLE_CLICK_TIME";
	var MOUSE_FOCUS_CLICKTHROUGH = cast "SDL_MOUSE_FOCUS_CLICKTHROUGH";
	var MOUSE_NORMAL_SPEED_SCALE = cast "SDL_MOUSE_NORMAL_SPEED_SCALE";
	var MOUSE_RELATIVE_MODE_CENTER = cast "SDL_MOUSE_RELATIVE_MODE_CENTER";
	var MOUSE_RELATIVE_MODE_WARP = cast "SDL_MOUSE_RELATIVE_MODE_WARP";
	var MOUSE_RELATIVE_SCALING = cast "SDL_MOUSE_RELATIVE_SCALING";
	var MOUSE_RELATIVE_SPEED_SCALE = cast "SDL_MOUSE_RELATIVE_SPEED_SCALE";
	var MOUSE_RELATIVE_SYSTEM_SCALE = cast "SDL_MOUSE_RELATIVE_SYSTEM_SCALE";
	var MOUSE_RELATIVE_WARP_MOTION = cast "SDL_MOUSE_RELATIVE_WARP_MOTION";
	var MOUSE_TOUCH_EVENTS = cast "SDL_MOUSE_TOUCH_EVENTS";
	var MOUSE_AUTO_CAPTURE = cast "SDL_MOUSE_AUTO_CAPTURE";
	var NO_SIGNAL_HANDLERS = cast "SDL_NO_SIGNAL_HANDLERS";
	var OPENGL_ES_DRIVER = cast "SDL_OPENGL_ES_DRIVER";
	var ORIENTATIONS = cast "SDL_IOS_ORIENTATIONS";
	var POLL_SENTINEL = cast "SDL_POLL_SENTINEL";
	var PREFERRED_LOCALES = cast "SDL_PREFERRED_LOCALES";
	var QTWAYLAND_CONTENT_ORIENTATION = cast "SDL_QTWAYLAND_CONTENT_ORIENTATION";
	var QTWAYLAND_WINDOW_FLAGS = cast "SDL_QTWAYLAND_WINDOW_FLAGS";
	var RENDER_BATCHING = cast "SDL_RENDER_BATCHING";
	var RENDER_LINE_METHOD = cast "SDL_RENDER_LINE_METHOD";
	var RENDER_DIRECT3D11_DEBUG = cast "SDL_RENDER_DIRECT3D11_DEBUG";
	var RENDER_DIRECT3D_THREADSAFE = cast "SDL_RENDER_DIRECT3D_THREADSAFE";
	var RENDER_DRIVER = cast "SDL_RENDER_DRIVER";
	var RENDER_LOGICAL_SIZE_MODE = cast "SDL_RENDER_LOGICAL_SIZE_MODE";
	var RENDER_OPENGL_SHADERS = cast "SDL_RENDER_OPENGL_SHADERS";
	var RENDER_SCALE_QUALITY = cast "SDL_RENDER_SCALE_QUALITY";
	var RENDER_VSYNC = cast "SDL_RENDER_VSYNC";
	var RENDER_METAL_PREFER_LOW_POWER_DEVICE = cast "SDL_RENDER_METAL_PREFER_LOW_POWER_DEVICE";
	var ROG_GAMEPAD_MICE = cast "SDL_ROG_GAMEPAD_MICE";
	var ROG_GAMEPAD_MICE_EXCLUDED = cast "SDL_ROG_GAMEPAD_MICE_EXCLUDED";
	var PS2_DYNAMIC_VSYNC = cast "SDL_PS2_DYNAMIC_VSYNC";
	var RETURN_KEY_HIDES_IME = cast "SDL_RETURN_KEY_HIDES_IME";
	var RPI_VIDEO_LAYER = cast "SDL_RPI_VIDEO_LAYER";
	var SCREENSAVER_INHIBIT_ACTIVITY_NAME = cast "SDL_SCREENSAVER_INHIBIT_ACTIVITY_NAME";
	var THREAD_FORCE_REALTIME_TIME_CRITICAL = cast "SDL_THREAD_FORCE_REALTIME_TIME_CRITICAL";
	var THREAD_PRIORITY_POLICY = cast "SDL_THREAD_PRIORITY_POLICY";
	var THREAD_STACK_SIZE = cast "SDL_THREAD_STACK_SIZE";
	var TIMER_RESOLUTION = cast "SDL_TIMER_RESOLUTION";
	var TOUCH_MOUSE_EVENTS = cast "SDL_TOUCH_MOUSE_EVENTS";
	var VITA_TOUCH_MOUSE_DEVICE = cast "SDL_HINT_VITA_TOUCH_MOUSE_DEVICE";
	var TV_REMOTE_AS_JOYSTICK = cast "SDL_TV_REMOTE_AS_JOYSTICK";
	var VIDEO_ALLOW_SCREENSAVER = cast "SDL_VIDEO_ALLOW_SCREENSAVER";
	var VIDEO_DOUBLE_BUFFER = cast "SDL_VIDEO_DOUBLE_BUFFER";
	var VIDEO_EGL_ALLOW_TRANSPARENCY = cast "SDL_VIDEO_EGL_ALLOW_TRANSPARENCY";
	var VIDEO_EXTERNAL_CONTEXT = cast "SDL_VIDEO_EXTERNAL_CONTEXT";
	var VIDEO_HIGHDPI_DISABLED = cast "SDL_VIDEO_HIGHDPI_DISABLED";
	var VIDEO_MAC_FULLSCREEN_SPACES = cast "SDL_VIDEO_MAC_FULLSCREEN_SPACES";
	var VIDEO_MINIMIZE_ON_FOCUS_LOSS = cast "SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS";
	var VIDEO_WAYLAND_ALLOW_LIBDECOR = cast "SDL_VIDEO_WAYLAND_ALLOW_LIBDECOR";
	var VIDEO_WAYLAND_PREFER_LIBDECOR = cast "SDL_VIDEO_WAYLAND_PREFER_LIBDECOR";
	var VIDEO_WAYLAND_MODE_EMULATION = cast "SDL_VIDEO_WAYLAND_MODE_EMULATION";
	var VIDEO_WAYLAND_EMULATE_MOUSE_WARP = cast "SDL_VIDEO_WAYLAND_EMULATE_MOUSE_WARP";
	var VIDEO_WINDOW_SHARE_PIXEL_FORMAT = cast "SDL_VIDEO_WINDOW_SHARE_PIXEL_FORMAT";
	var VIDEO_FOREIGN_WINDOW_OPENGL = cast "SDL_VIDEO_FOREIGN_WINDOW_OPENGL";
	var VIDEO_FOREIGN_WINDOW_VULKAN = cast "SDL_VIDEO_FOREIGN_WINDOW_VULKAN";
	var VIDEO_WIN_D3DCOMPILER = cast "SDL_VIDEO_WIN_D3DCOMPILER";
	var VIDEO_X11_FORCE_EGL = cast "SDL_VIDEO_X11_FORCE_EGL";
	var VIDEO_X11_NET_WM_BYPASS_COMPOSITOR = cast "SDL_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR";
	var VIDEO_X11_NET_WM_PING = cast "SDL_VIDEO_X11_NET_WM_PING";
	var VIDEO_X11_WINDOW_VISUALID = cast "SDL_VIDEO_X11_WINDOW_VISUALID";
	var VIDEO_X11_XINERAMA = cast "SDL_VIDEO_X11_XINERAMA";
	var VIDEO_X11_XRANDR = cast "SDL_VIDEO_X11_XRANDR";
	var VIDEO_X11_XVIDMODE = cast "SDL_VIDEO_X11_XVIDMODE";
	var WAVE_FACT_CHUNK = cast "SDL_WAVE_FACT_CHUNK";
	var WAVE_RIFF_CHUNK_SIZE = cast "SDL_WAVE_RIFF_CHUNK_SIZE";
	var WAVE_TRUNCATION = cast "SDL_WAVE_TRUNCATION";
	var WINDOWS_DISABLE_THREAD_NAMING = cast "SDL_WINDOWS_DISABLE_THREAD_NAMING";
	var WINDOWS_ENABLE_MENU_MNEMONICS = cast "SDL_WINDOWS_ENABLE_MENU_MNEMONICS";
	var WINDOWS_ENABLE_MESSAGELOOP = cast "SDL_WINDOWS_ENABLE_MESSAGELOOP";
	var WINDOWS_FORCE_MUTEX_CRITICAL_SECTIONS = cast "SDL_WINDOWS_FORCE_MUTEX_CRITICAL_SECTIONS";
	var WINDOWS_FORCE_SEMAPHORE_KERNEL = cast "SDL_WINDOWS_FORCE_SEMAPHORE_KERNEL";
	var WINDOWS_INTRESOURCE_ICON = cast "SDL_WINDOWS_INTRESOURCE_ICON";
	var WINDOWS_INTRESOURCE_ICON_SMALL = cast "SDL_WINDOWS_INTRESOURCE_ICON_SMALL";
	var WINDOWS_NO_CLOSE_ON_ALT_F4 = cast "SDL_WINDOWS_NO_CLOSE_ON_ALT_F4";
	var WINDOWS_USE_D3D9EX = cast "SDL_WINDOWS_USE_D3D9EX";
	var WINDOWS_DPI_AWARENESS = cast "SDL_WINDOWS_DPI_AWARENESS";
	var WINDOWS_DPI_SCALING = cast "SDL_WINDOWS_DPI_SCALING";
	var WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN = cast "SDL_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN";
	var WINDOW_NO_ACTIVATION_WHEN_SHOWN = cast "SDL_WINDOW_NO_ACTIVATION_WHEN_SHOWN";
	var WINRT_HANDLE_BACK_BUTTON = cast "SDL_WINRT_HANDLE_BACK_BUTTON";
	var WINRT_PRIVACY_POLICY_LABEL = cast "SDL_WINRT_PRIVACY_POLICY_LABEL";
	var WINRT_PRIVACY_POLICY_URL = cast "SDL_WINRT_PRIVACY_POLICY_URL";
	var X11_FORCE_OVERRIDE_REDIRECT = cast "SDL_X11_FORCE_OVERRIDE_REDIRECT";
	var XINPUT_ENABLED = cast "SDL_XINPUT_ENABLED";
	var DIRECTINPUT_ENABLED = cast "SDL_DIRECTINPUT_ENABLED";
	var XINPUT_USE_OLD_JOYSTICK_MAPPING = cast "SDL_XINPUT_USE_OLD_JOYSTICK_MAPPING";
	var AUDIO_INCLUDE_MONITORS = cast "SDL_AUDIO_INCLUDE_MONITORS";
	var X11_WINDOW_TYPE = cast "SDL_X11_WINDOW_TYPE";
	var QUIT_ON_LAST_WINDOW_CLOSE = cast "SDL_QUIT_ON_LAST_WINDOW_CLOSE";
	var VIDEODRIVER = cast "SDL_VIDEODRIVER";
	var AUDIODRIVER = cast "SDL_AUDIODRIVER";
	var KMSDRM_DEVICE_INDEX = cast "SDL_KMSDRM_DEVICE_INDEX";
	var TRACKPAD_IS_TOUCH_ONLY = cast "SDL_TRACKPAD_IS_TOUCH_ONLY";
}

extern enum abstract HintPriority(UInt32) from UInt32 to UInt32 {
    @:native("SDL_HINT_DEFAULT")
    var DEFAULT;
    @:native("SDL_HINT_NORMAL")
    var NORMAL;
    @:native("SDL_HINT_OVERRIDE")
    var OVERRIDE;
}

typedef HintCallback = cpp.Callable<(userdata:Pointer<cpp.Void>, name:ConstCharStar, oldValue:ConstCharStar, newValue:ConstCharStar) -> Void>;



// SDL_log.h
extern enum abstract LogCategories(UInt32) from UInt32 to UInt32 {
    @:native("SDL_LOG_CATEGORY_APPLICATION")
	var APPLICATION;
	@:native("SDL_LOG_CATEGORY_ERROR")
	var ERROR;
	@:native("SDL_LOG_CATEGORY_ASSERT")
	var ASSERT;
	@:native("SDL_LOG_CATEGORY_SYSTEM")
	var SYSTEM;
	@:native("SDL_LOG_CATEGORY_AUDIO")
	var AUDIO;
	@:native("SDL_LOG_CATEGORY_VIDEO")
	var VIDEO;
	@:native("SDL_LOG_CATEGORY_RENDER")
	var RENDER;
	@:native("SDL_LOG_CATEGORY_INPUT")
	var INPUT;
	@:native("SDL_LOG_CATEGORY_TEST")
	var TEST;
	@:native("SDL_LOG_CATEGORY_RESERVED1")
	var RESERVED1;
	@:native("SDL_LOG_CATEGORY_RESERVED2")
	var RESERVED2;
	@:native("SDL_LOG_CATEGORY_RESERVED3")
	var RESERVED3;
	@:native("SDL_LOG_CATEGORY_RESERVED4")
	var RESERVED4;
	@:native("SDL_LOG_CATEGORY_RESERVED5")
	var RESERVED5;
	@:native("SDL_LOG_CATEGORY_RESERVED6")
	var RESERVED6;
	@:native("SDL_LOG_CATEGORY_RESERVED7")
	var RESERVED7;
	@:native("SDL_LOG_CATEGORY_RESERVED8")
	var RESERVED8;
	@:native("SDL_LOG_CATEGORY_RESERVED9")
	var RESERVED9;
	@:native("SDL_LOG_CATEGORY_RESERVED10")
	var RESERVED10;
	@:native("SDL_LOG_CATEGORY_CUSTOM")
	var CUSTOM;
}

extern enum abstract LogPriority(UInt32) from UInt32 to UInt32 {
	@:native("SDL_LOG_PRIORITY_VERBOSE")
	var VERBOSE;
	@:native("SDL_LOG_PRIORITY_DEBUG")
	var DEBUG;
	@:native("SDL_LOG_PRIORITY_INFO")
	var INFO;
	@:native("SDL_LOG_PRIORITY_WARN")
	var WARN;
	@:native("SDL_LOG_PRIORITY_ERROR")
	var ERROR;
	@:native("SDL_LOG_PRIORITY_CRITICAL")
	var CRITICAL;
    @:native("SDL_NUM_LOG_PRIORITIES")
    var NUM_LOG_PRIORITIES;
}

typedef LogOutputFunction = cpp.Callable<(userdata:Pointer<cpp.Void>, category:Int, priority:LogPriority, message:ConstCharStar) -> Void>;



// SDL_version.h
@:include("vendor/include/Headers.h")
@:native("SDL_version")
@:structAccess
extern class SDLVersion {
	@:native("major")
	public var major:cpp.UInt8;
	@:native("minor")
	public var minor:cpp.UInt8;
	@:native("patch")
	public var patch:cpp.UInt8;
}



// SDL_video.h
@:include("vendor/include/Headers.h")
@:native("SDL_DisplayMode")
@:structAccess
extern class DisplayMode {
	@:native("format")
	public var format:cpp.UInt32;
	@:native("w")
	public var width:Int;
	@:native("h")
	public var height:Int;
	@:native("refresh_rate")
	public var refreshRate:Int;
	@:native("driverdata")
	public var driverData:Pointer<cpp.Void>;
}

@:keep
@:native("SDL_Window")
@:include("vendor/include/Headers.h")
extern class SDL_Window {}
typedef Window = Pointer<SDL_Window>;

@:keep
enum abstract WindowInitFlags(UInt32) from UInt32 to UInt32 {
	var FULLSCREEN = 0x00000001;
	var OPENGL = 0x00000002;
	var SHOWN = 0x00000004;
	var HIDDEN = 0x00000008;
	var BORDERLESS = 0x00000010;
	var RESIZABLE = 0x00000020;
	var MINIMIZED = 0x00000040;
	var MAXIMIZED = 0x00000080;
	var MOUSE_GRABBED = 0x00000100;
	var INPUT_FOCUS = 0x00000200;
	var MOUSE_FOCUS = 0x00000400;
	var FULLSCREEN_DESKTOP = (FULLSCREEN | 0x00001000);
	var FOREIGN = 0x00000800;
	var ALLOW_HIGHDPI = 0x00002000;
	var MOUSE_CAPTURE = 0x00004000;
	var ALWAYS_ON_TOP = 0x00008000;
	var SKIP_TASKBAR = 0x00010000;
	var UTILITY = 0x00020000;
	var TOOLTIP = 0x00040000;
	var POPUP_MENU = 0x00080000;
	var KEYBOARD_GRABBED = 0x00100000;
	var VULKAN = 0x10000000;
	var METAL = 0x20000000;
	var INPUT_GRABBED = MOUSE_GRABBED;
}

@:keep
enum abstract WindowPos(UInt32) from UInt32 to UInt32 {
	var CENTERED = 0x2FFF0000;
	var UNDEFINED = 0x1FFF0000;
}

@:keep
enum abstract WindowEventID(UInt32) from UInt32 to UInt32 {
	var NONE = 0;       /**< Never used */
    var SHOWN;          /**< Window has been shown */
    var HIDDEN;         /**< Window has been hidden */
    var EXPOSED;        /**< Window has been exposed and should be
                                         redrawn */
    var MOVED;          /**< Window has been moved to data1, data2
                                     */
    var RESIZED;        /**< Window has been resized to data1xdata2 */
    var SIZE_CHANGED;   /**< The window size has changed, either as
                                         a result of an API call or through the
                                         system or user changing the window size. */
    var MINIMIZED;      /**< Window has been minimized */
    var MAXIMIZED;      /**< Window has been maximized */
    var RESTORED;       /**< Window has been restored to normal size
                                         and position */
    var ENTER;          /**< Window has gained mouse focus */
    var LEAVE;          /**< Window has lost mouse focus */
    var FOCUS_GAINED;   /**< Window has gained keyboard focus */
    var FOCUS_LOST;     /**< Window has lost keyboard focus */
    var CLOSE;          /**< The window manager requests that the window be closed */
    var TAKE_FOCUS;     /**< Window is being offered a focus (should SetWindowInputFocus() on itself or a subwindow, or ignore) */
    var HIT_TEST;       /**< Window had a hit test that wasn't var NORMAL. */
    var ICCPROF_CHANGED; /**< The ICC profile of the window's display has changed. */
    var DISPLAY_CHANGED; /**< Window has been moved to display data1. */
}

@:keep
enum abstract DisplayEventID(UInt32) from UInt32 to UInt32 {
	var NONE = 0;       /**< Never used */
    var ORIENTATION;   /**< Display orientation has changed to data1 */
    var CONNECTED;     /**< Display has been added to the system */
    var DISCONNECTED;  /**< Display has been removed from the system */
    var MOVED;          /**< Display has changed position */
}

@:keep
enum abstract DisplayOrientation(UInt32) from UInt32 to UInt32 {
    var UNKNOWN = 0;            /**< The display orientation can't be determined */
    var LANDSCAPE;          /**< The display is in landscape mode, with the right side up, relative to portrait mode */
    var LANDSCAPE_FLIPPED;  /**< The display is in landscape mode, with the left side up, relative to portrait mode */
    var PORTRAIT;           /**< The display is in portrait mode */
    var PORTRAIT_FLIPPED;    /**< The display is in portrait mode, upside down */
}

@:keep
enum abstract FlashOperation(UInt32) from UInt32 to UInt32 {
    var CANCEL = 0;                   /**< Cancel any window flash state */
    var BRIEFLY;                  /**< Flash the window briefly to get attention */
    var UNTIL_FOCUSED;             /**< Flash the window until it gets focus */
}

typedef GlContext = Pointer<cpp.Void>;

@:keep
enum abstract GlAttribute(UInt32) from UInt32 to UInt32 {
	var RED_SIZE = 0;
    var GREEN_SIZE;
    var BLUE_SIZE;
    var ALPHA_SIZE;
    var BUFFER_SIZE;
    var DOUBLEBUFFER;
    var DEPTH_SIZE;
    var STENCIL_SIZE;
    var ACCUM_RED_SIZE;
    var ACCUM_GREEN_SIZE;
    var ACCUM_BLUE_SIZE;
    var ACCUM_ALPHA_SIZE;
    var STEREO;
    var MULTISAMPLEBUFFERS;
    var MULTISAMPLESAMPLES;
    var ACCELERATED_VISUAL;
    var RETAINED_BACKING;
    var CONTEXT_MAJOR_VERSION;
    var CONTEXT_MINOR_VERSION;
    var CONTEXT_EGL;
    var CONTEXT_FLAGS;
    var CONTEXT_PROFILE_MASK;
    var SHARE_WITH_CURRENT_CONTEXT;
    var FRAMEBUFFER_SRGB_CAPABLE;
    var CONTEXT_RELEASE_BEHAVIOR;
    var CONTEXT_RESET_NOTIFICATION;
    var CONTEXT_NO_ERROR;
    var FLOATBUFFERS;
}

@:keep
enum abstract GlProfile(UInt32) from UInt32 to UInt32 {
	var CORE = 0x0001;
    var COMPATIBILITY = 0x0002;
    var ES = 0x0004; /**< GLX_CONTEXT_ES2_PROFILE_BIT_EXT */
}

@:keep
enum abstract GlContextFlag(UInt32) from UInt32 to UInt32 {
    var DEBUG_FLAG = 0x0001;
    var FORWARD_COMPATIBLE_FLAG = 0x0002;
    var ROBUST_ACCESS_FLAG = 0x0004;
    var RESET_ISOLATION_FLAG = 0x0008;
}

@:keep
enum abstract GlContextReleaseFlag(UInt32) from UInt32 to UInt32 {
    var NONE = 0x0000;
    var FLUSH = 0x0001;
}

@:keep
enum abstract GlContextResetNotification(UInt32) from UInt32 to UInt32 {
    var NO_NOTIFICATION = 0x0000;
    var LOSE_CONTEXT = 0x0001;
}

@:keep
enum abstract HitTestResult(UInt32) from UInt32 to UInt32 {
    var NORMAL = 0;  /**< Region is normal. No special properties. */
    var DRAGGABLE;  /**< Region can drag entire window. */
    var RESIZE_TOPLEFT;
    var RESIZE_TOP;
    var RESIZE_TOPRIGHT;
    var RESIZE_RIGHT;
    var RESIZE_BOTTOMRIGHT;
    var RESIZE_BOTTOM;
    var RESIZE_BOTTOMLEFT;
    var RESIZE_LEFT;
}

typedef HitTest = cpp.Callable<(window:Window, area:cpp.RawConstPointer<Point>, data:Any) -> HitTestResult>;



// SDL_blendmode.h
enum abstract BlendMode(UInt32) to UInt32 from UInt32 {
	var NONE = 0x00000000;     /**< no blending
									dstRGBA = srcRGBA */
	var BLEND = 0x00000001;    /**< alpha blending
									dstRGB = (srcRGB * srcA) + (dstRGB * (1-srcA))
									dstA = srcA + (dstA * (1-srcA)) */
	var ADD = 0x00000002;      /**< additive blending
									dstRGB = (srcRGB * srcA) + dstRGB
									dstA = dstA */
	var MOD = 0x00000004;      /**< color modulate
									dstRGB = srcRGB * dstRGB
									dstA = dstA */
	var MUL = 0x00000008;      /**< color multiply
									dstRGB = (srcRGB * dstRGB) + (dstRGB * (1-srcA))
									dstA = dstA */
	var INVALID = 0x7FFFFFFF;
}

enum abstract BlendOperation(UInt32) to UInt32 from UInt32 {
	var ADD              = 0x1;  /**< dst + src: supported by all renderers */
    var SUBTRACT         = 0x2;  /**< dst - src : supported by D3D9, D3D11, OpenGL, OpenGLES */
    var REV_SUBTRACT     = 0x3;  /**< src - dst : supported by D3D9, D3D11, OpenGL, OpenGLES */
    var MINIMUM          = 0x4;  /**< min(dst, src) : supported by D3D9, D3D11 */
    var MAXIMUM          = 0x5;   /**< max(dst, src) : supported by D3D9, D3D11 */
}

enum abstract BlendFactor(UInt32) to UInt32 from UInt32 {
	var ZERO                = 0x1;  /**< 0, 0, 0, 0 */
    var ONE                 = 0x2;  /**< 1, 1, 1, 1 */
    var SRC_COLOR           = 0x3;  /**< srcR, srcG, srcB, srcA */
    var ONE_MINUS_SRC_COLOR = 0x4;  /**< 1-srcR, 1-srcG, 1-srcB, 1-srcA */
    var SRC_ALPHA           = 0x5;  /**< srcA, srcA, srcA, srcA */
    var ONE_MINUS_SRC_ALPHA = 0x6;  /**< 1-srcA, 1-srcA, 1-srcA, 1-srcA */
    var DST_COLOR           = 0x7;  /**< dstR, dstG, dstB, dstA */
    var ONE_MINUS_DST_COLOR = 0x8;  /**< 1-dstR, 1-dstG, 1-dstB, 1-dstA */
    var DST_ALPHA           = 0x9;  /**< dstA, dstA, dstA, dstA */
    var ONE_MINUS_DST_ALPHA = 0xA;  /**< 1-dstA, 1-dstA, 1-dstA, 1-dstA */
}



// SDL_render.h
@:keep
enum abstract RendererFlags(UInt32) from UInt32 to UInt32 {
    var SOFTWARE = 0x00000001;         /**< The renderer is a software fallback */
    var ACCELERATED = 0x00000002;      /**< The renderer uses hardware
                                                     acceleration */
    var PRESENTVSYNC = 0x00000004;     /**< Present is synchronized
                                                     with the refresh rate */
    var TARGETTEXTURE = 0x00000008;     /**< The renderer supports
                                                     rendering to texture */
}

@:keep
@:include("vendor/include/Headers.h")
@:native("SDL_RendererInfo")
@:structAccess
extern class RendererInfo {
	@:native("name")
	public var name:ConstCharStar;
	@:native("flags")
	public var flags:UInt32;
	@:native("num_texture_formats")
	public var numTextureFormats:UInt32;
	@:native("texture_formats")
	public var textureFormats:RawPointer<UInt32>;
	@:native("max_texture_width")
	public var maxTextureWidth:Int;
	@:native("max_texture_height")
	public var maxTextureHeight:Int;
}

@:keep
@:native("SDL_Vertex")
@:include("vendor/include/Headers.h")
@:structAccess
extern class Vertex {
	@:native("position")
	public var position:FloatPoint;
	@:native("color")
	public var color:Color;
	@:native("tex_coord")
	public var texCoord:FloatPoint;

	public static inline function create(pos:FloatPoint, col:Color, tex:FloatPoint):Vertex {
		return cast untyped __cpp__("SDL_Vertex{{0}, {1}, {2}}", pos, col, tex);
	}
}

@:keep
enum abstract ScaleMode(UInt32) from UInt32 to UInt32 {
    var NEAREST = 0;
    var LINEAR;
    var BEST;
}

@:keep
enum abstract TextureAccess(UInt32) from UInt32 to UInt32 {
    var STAIC = 0;
    var STREAMING;
    var TARGET;
}

@:keep
enum abstract TextureModulate(UInt32) from UInt32 to UInt32 {
	var NONE = 0x00000000;     /**< No modulation */
    var COLOR = 0x00000001;    /**< srcC = srcC * color */
    var ALPHA = 0x00000002;     /**< srcA = srcA * alpha */
}

@:keep
enum abstract RendererFlip(UInt32) to UInt32 from UInt32 {
	var NONE = 0x00000000;
    var HORIZONTAL = 0x00000001;
    var VERTICAL = 0x00000002;
}

@:keep
@:native("SDL_Renderer")
@:include("vendor/include/Headers.h")
extern class SDL_Renderer {}
typedef Renderer = Pointer<SDL_Renderer>;

@:keep
@:native("SDL_Texture")
@:include("vendor/include/Headers.h")
extern class SDL_Texture {}
typedef Texture = Pointer<SDL_Texture>;



// SDL_pixels.h
@:keep
enum abstract TransparencyDefs(UInt32) from UInt32 to UInt32 {
	var OPAQUE = 255;
    var TRANSPARENT = 0;
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
// hello sqwordccube
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

@:keep
@:native("SDL_Palette")
@:include("vendor/include/Headers.h")
@:structAccess
extern class SDL_Palette {
	@:native("ncolors")
	public var numColors:Int;
	@:native("colors")
	public var colors:RawPointer<Color>;
	@:native("version")
	public var version:UInt32;
	@:native("refcount")
	public var refCount:Int;
}
typedef Palette = Pointer<SDL_Palette>;

@:keep
@:native("SDL_Palette")
@:include("vendor/include/Headers.h")
@:structAccess
extern class SDL_PixelFormat {
	@:native("format")
	public var format:UInt32;
	@:native("palette")
	public var palette:Palette;
	@:native("BitsPerPixel")
	public var bitsPerPixel:UInt8;
	@:native("BytesPerPixel")
	public var bytesPerPixel:UInt8;
	@:native("padding")
	public var padding:RawPointer<UInt8>;
	@:native("Rmask")
	public var Rmask:UInt32;
	@:native("Gmask")
	public var Gmask:UInt32;
	@:native("Bmask")
	public var Bmask:UInt32;
	@:native("Amask")
	public var Amask:UInt32;
	@:native("Rloss")
	public var Rloss:UInt8;
	@:native("Gloss")
	public var Gloss:UInt8;
	@:native("Bloss")
	public var Bloss:UInt8;
	@:native("Aloss")
	public var Aloss:UInt8;
	@:native("Rshift")
	public var Rshift:UInt8;
	@:native("Gshift")
	public var Gshift:UInt8;
	@:native("Bshift")
	public var Bshift:UInt8;
	@:native("Ashift")
	public var Ashift:UInt8;
	@:native("refcount")
	public var refCount:Int;
	@:native("next")
	public var next:PixelFormat;
}
typedef PixelFormat = Pointer<SDL_PixelFormat>;



// SDL_rect.h
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