# alpha-lookalike mobile

Derived from DieuDeGlace/alpha-lookalike through71c043b, preserving source history and MIT attribution. MobileBuild.h names the inspected GameNative executable identity; NativeScene caches immutable build validation while refreshing the game pointer for world reloads.

This companion exports FinishAlphaLookalike so TemporalAA can finish grading before resolving the world. Palette algorithm/settings remain upstream; existing phone saturation90/tint4 were preserved. NativePalette.ini remains unchanged. Install alpha-lookalike.dll in Mods with the game closed, retaining your existing INI. Do not place a second DLL copy under a different name.

PaletteTest passed on WARP at720p/1080p/360p (color results, state restoration, target release). Phone DLL checksum verified, actual Steam world/HUD render with TAA and MoonandShadow. Long-session, all weather and fast-motion quality remain unverified; no FPS claim. Build with build-mobile.cmd in an x64 Visual Studio tools shell with clang-cl.
