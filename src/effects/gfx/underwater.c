#include "include_asset.h"
#include "common.h"

INCLUDE_IMG("effects/gfx/D_09000000_3B9A70.png", D_09000000_3B9A70);
#include "effects/gfx/D_09000080_3B9AF0.vtx.inc.c"
#include "effects/gfx/D_09000200_3B9C70.gfx.inc.c"
#include "effects/gfx/D_09000248_3B9CB8.gfx.inc.c"
#include "effects/gfx/D_09000258_3B9CC8.gfx.inc.c"
#include "effects/gfx/D_09000268_3B9CD8.gfx.inc.c"
#include "effects/gfx/D_09000278_3B9CE8.gfx.inc.c"
#include "effects/gfx/D_090003A0_3B9E10.gfx.inc.c"
#include "effects/gfx/D_090003B8_3B9E28.vtx.inc.c"
#include "effects/gfx/D_090003D8_3B9E58.gfx.inc.c"

// unused
Vp D_09000418_3B9E88 = {
    .vp = {
        .vscale = { 640, 480, 511, 0 },
        .vtrans = { 640, 480, 511, 0 }
    }
};

#include "effects/gfx/D_09000428_3B9E98.vtx.inc.c"

Gfx D_09000528_3B9F98[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetScissor(G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT),
    gsDPSetCycleType(G_CYC_COPY),
    gsDPSetTexturePersp(G_TP_NONE),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetRenderMode(G_RM_NOOP, G_RM_NOOP2),
    gsDPSetTextureFilter(G_TF_POINT),
    gsSPEndDisplayList(),
};

Gfx D_09000570_3B9FE0[] = {
    gsDPSetCycleType(G_CYC_FILL),
    gsDPSetTexturePersp(G_TP_NONE),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetRenderMode(G_RM_NOOP, G_RM_NOOP2),
    gsDPSetTextureFilter(G_TF_POINT),
    gsDPSetFillColor(0xFFFCFFFC),
    gsDPFillRectangle(0, 0, SCREEN_WIDTH-1, SCREEN_HEIGHT-1),
    gsDPPipeSync(),
    gsDPPipeSync(),
    gsSPEndDisplayList(),
};