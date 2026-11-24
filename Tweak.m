// Original tweak by Joshua Seltzer (2025-01-10).
// Research credit: PoomSmart.
#import <objc/runtime.h>
#import <substrate.h>

static BOOL disableAutoLPM(__unused id self, __unused SEL cmd) {
    return NO;
}

__attribute__((constructor))
static void installHook(void) {
    Class cls = objc_getClass("PMLowPowerModeService");
    if (cls)
        MSHookMessageEx(cls, sel_registerName("autoDisableLowPowerMode"), (IMP)disableAutoLPM, NULL);
}
