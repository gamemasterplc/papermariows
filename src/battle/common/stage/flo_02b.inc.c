#include "common.h"
#include "battle/battle.h"
#include "mapfs/flo_bt02_shape.h"
#include "effects.h"

#include "flo_RandomFlowers.inc.c"
#include "common/MakeSun.inc.c"

EvtScript N(EVS_PreBattle) = {
    EVT_CALL(SetSpriteShading, SHADING_NONE)
    EVT_CALL(SetCamBGColor, CAM_BATTLE, 0, 0, 0)
    EVT_CALL(SetGroupVisibility, MODEL_dai_05, MODEL_GROUP_HIDDEN)
    EVT_CALL(SetGroupVisibility, MODEL_0809, MODEL_GROUP_VISIBLE)
    EVT_CALL(SetGroupVisibility, MODEL_16, MODEL_GROUP_HIDDEN)
    EVT_EXEC(N(EVS_RandomFlowers_FarBack))
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_SURFACE, 0, SURFACE_TYPE_FLOWERS)
    EVT_EXEC_WAIT(N(MakeSun))
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_PostBattle) = {
    EVT_RETURN
    EVT_END
};

s32 N(ForegroundModels)[] = {
    -1,
    MODEL_8hana4,
    MODEL_8hana5,
    MODEL_8hana6,
    MODEL_8hana1,
    MODEL_8hana1,
    MODEL_8hana3,
    STAGE_MODEL_LIST_END
};

Stage NAMESPACE = {
    .texture = "flo_tex",
    .shape = "flo_bt02_shape",
    .hit = "flo_bt02_hit",
    .bg = "fla_bg",
    .preBattle = &N(EVS_PreBattle),
    .postBattle = &N(EVS_PostBattle),
    .foregroundModelList = N(ForegroundModels),
};