#include "common.h"

API_CALLABLE(N(DarkRoomUpdate)) {
    PlayerStatus* playerStatus = &gPlayerStatus;
    PlayerData* playerData = &gPlayerData;

    if (isInitialCall) {
        if(evt_get_variable(script, GF_KGR_EraseDarkness)) {
            script->functionTemp[0] = 0;
            script->functionTemp[1] = TRUE;
        } else {
            script->functionTemp[0] = 255;
            script->functionTemp[1] = FALSE;
        }
    }

    set_screen_overlay_center_worldpos(SCREEN_LAYER_BACK, 1, playerStatus->pos.x, playerStatus->pos.y + 8.0f, playerStatus->pos.z);
    if(evt_get_variable(script, GF_KGR_EraseDarkness)) {
        if (!script->functionTemp[1]) {
            script->functionTemp[1] = TRUE;
            sfx_play_sound(SOUND_WATT_REPEL_DARKNESS);
        }
        script->functionTemp[0] -= 8;
        if (script->functionTemp[0] < 0) {
            script->functionTemp[0] = 0;
        }
    } else {
        if (gPartnerStatus.partnerActionState != PARTNER_ACTION_NONE) {
            if (playerData->curPartner == PARTNER_WATT) {
                if (!script->functionTemp[1]) {
                    script->functionTemp[1] = TRUE;
                    sfx_play_sound(SOUND_WATT_REPEL_DARKNESS);
                }
                script->functionTemp[0] -= 8;
                if (script->functionTemp[0] < 90) {
                    script->functionTemp[0] = 90;
                }
            }
        } else if (playerData->curPartner == PARTNER_WATT) {
            if (script->functionTemp[1]) {
                script->functionTemp[1] = FALSE;
                if (script->functionTemp[0] < 255) {
                    sfx_play_sound(SOUND_WATT_RESUME_DARKNESS);
                }
            }
            script->functionTemp[0] += 8;
            if (script->functionTemp[0] >= 255) {
                script->functionTemp[0] = 255;
            }
        } else {
            script->functionTemp[0] = 255;
        }
    }
    if((gPlayerStatusPtr->curButtons & (L_TRIG | R_TRIG)) == (L_TRIG | R_TRIG)) {
        evt_set_variable(script, GF_KGR_EraseDarkness, TRUE);
    }
    set_screen_overlay_alpha(SCREEN_LAYER_BACK, script->functionTemp[0]);
    set_screen_overlay_params_back(OVERLAY_WORLD_DARKNESS, 255.0f);

    return ApiStatus_BLOCK;
}

EvtScript N(EVS_CreateDarkness) = {
    Thread
        Call(N(DarkRoomUpdate))
    EndThread
    Return
    End
};
