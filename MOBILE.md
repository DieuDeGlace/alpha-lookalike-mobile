# alpha-lookalike mobile

Derived from DieuDeGlace/alpha-lookalike through71c043b, preserving source history and MIT attribution. MobileBuild.h names the inspected GameNative executable identity; NativeScene caches immutable build validation while refreshing the game pointer for world reloads.

This companion exports FinishAlphaLookalike so TemporalAA can finish grading before resolving the world. Palette algorithm/settings remain upstream; existing phone saturation90/tint4 were preserved. NativePalette.ini remains unchanged. Install alpha-lookalike.dll in Mods with the game closed, retaining your existing INI. Do not place a second DLL copy under a different name.

PaletteTest passed on WARP at720p/1080p/360p (color results, state restoration, target release). Phone DLL checksum verified, actual Steam world/HUD render with TAA and MoonandShadow. Long-session, all weather and fast-motion quality remain unverified; no FPS claim. Build with build-mobile.cmd in an x64 Visual Studio tools shell with clang-cl.

## Distance fog with MSAA depth (2026-10-15)

Merged upstream alpha-lookalike `fix/fog-msaa-depth`. That brings Alpha/Omega-style distance fog (the `[Fog]` settings, tuned closer) to the mobile repo. Since 2026-10-14 the phone already ran the PC build, where the fog stayed off because the game's scene depth is multisampled.

The fog now reads MSAA depth, sample 0, through an `MSAA_DEPTH` shader variant. It reads the depth in place when the depth is shader-readable, which TemporalAA's `ReadableDepth` hook provides on the phone; otherwise it copies the depth.

`MobileBuild.h` and the phone-only identity check are kept. PaletteTest passes, including both 4x MSAA fog paths.


## Rendering performance sync — 2026-10-15

Applied directly to mobile main from desktop `dab92fe240da33cfe1f3849804a7a6466b4e924a`. Ports depth-backed world-camera capture and exact clear-depth sky classification. Valid distant geometry receives fog; sky and HUD remain excluded. Current-frame culling is reset before scene capture. The mobile executable identity guard, cached validation and mobile configuration presets are retained. Builds remain Windows x64 DLLs for GameNative, not Android shared libraries. Desktop CPU/GPU fixture results are not phone performance measurements. Preserve existing phone INIs when installing. PC regression checks and phone deployment verification are recorded with the release artifacts; gameplay performance/visual confirmation remains required.
