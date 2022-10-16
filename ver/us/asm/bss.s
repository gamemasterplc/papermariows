.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .bss

dlabel nuScPreNMIFlag
.space 4

dlabel D_8009A5B4
.space 4

dlabel D_8009A5B8
.space 4

dlabel D_8009A5BC
.space 4

dlabel gSoundGlobals
.space 4

dlabel D_8009A5C4
.space 4

dlabel __osBaseCounter
.space 4

dlabel gBGMPlayerC
.space 4

dlabel D_8009A5D0
.space 4

dlabel CurrentSefCmdHandler
.space 4

dlabel timeFreezeMode
.space 4

dlabel nuGfxZBuffer
.space 4

dlabel nuContDataLockKey
.space 4

dlabel __osViIntrCount
.space 4

dlabel BeginSoundUpdateCallback
.space 4

dlabel D_8009A5EC
.space 4

dlabel nuGfxCfbCounter
.space 4

dlabel mdl_currentModelTreeNodeInfo
.space 4

dlabel nuGfxDisplay
.space 4

dlabel gBGMPlayerB
.space 4

dlabel gGameState
.space 4

dlabel gNpcCount
.space 2

dlabel __osMaxControllers
.space 2

dlabel __osCurrentTime
.space 4

dlabel D_8009A60C
.space 4

dlabel nuGfxUcode
.space 4

dlabel nuContNum
.space 4

dlabel nuGfxTaskSpool
.space 4

dlabel __osContLastCmd
.space 4

dlabel __osEepromTimerMsg
.space 4

dlabel D_8009A624
.space 4

dlabel gAuAmbienceManager
.space 4

dlabel __osTimerCounter
.space 4

dlabel nuIdleFunc
.space 4

dlabel gCurrentCamID
.space 4

dlabel nuPiCartHandle
.space 4

dlabel D_8009A63C
.space 4

dlabel gSoundManager
.space 4

dlabel D_8009A644
.space 8

dlabel nuGfxCfb_ptr
.space 4

dlabel gOverrideFlags
.space 4

dlabel D_8009A654
.space 4

dlabel nuGfxCfb
.space 4

dlabel D_8009A65C
.space 4

dlabel D_8009A660
.space 4

dlabel gBGMPlayerA
.space 4

dlabel D_8009A668
.space 4

dlabel gMasterGfxPos
.space 4

dlabel D_8009A670
.space 4

dlabel gDisplayContext
.space 4

dlabel D_8009A678
.space 4

dlabel D_8009A67C
.space 4

dlabel D_8009A680
.space 4

dlabel D_8009A684
.space 0x0000000c

dlabel D_8009A690
.space 4

dlabel D_8009A694
.space 0x0000000c

dlabel D_8009A6A0
.space 2

dlabel D_8009A6A2
.space 2

dlabel D_8009A6A4
.space 2

dlabel D_8009A6A6
.space 2

dlabel D_8009A6A8
.space 8

dlabel D_8009A6B0
.space 0x00001380

dlabel logicalSaveInfo
.space 0x00000020

dlabel physicalSaveInfo
.space 0x00000030

dlabel nextAvailableSavePage
.space 4

dlabel D_8009BA84
.space 0x0000000c

dlabel gCurtainScale
.space 4

dlabel gCurtainScaleGoal
.space 4

dlabel gCurtainFade
.space 4

dlabel gCurtainFadeGoal
.space 4

dlabel gCurtainDrawCallback
.space 4

dlabel D_8009BAA4
.space 4

dlabel D_8009BAA8
.space 0x00000080

dlabel D_8009BA28
.space 8

dlabel gCrashScreen
.space 0x000009e0

dlabel nuGfxTask_ptr
.space 4

dlabel taskDoneMsg
.space 2

dlabel swapBufMsg
.space 2

dlabel GfxTaskMgrThread
.space 0x000021b0

dlabel D_8009E6C8
.space 8

dlabel D_8009E6D0
.space 0x00000020

dlabel nuSiMesgBuf
.space 0x00000020

dlabel siMgrThread
.space 0x000021b0

dlabel blendedCamSettings
.space 0x0000001c

dlabel D_800A08DC
.space 4

dlabel D_800A08E0
.space 4

dlabel D_800A08E4
.space 4

dlabel D_800A08E8
.space 4

dlabel D_800A08EC
.space 4

dlabel gameMode
.space 4

dlabel D_800A08F4
.space 0x0000000c

dlabel D_800A0900
.space 4

dlabel D_800A0904
.space 4

dlabel D_800A0908
.space 4

dlabel D_800A090C
.space 4

dlabel gLogosImages
.space 4

dlabel gLogosImage3
.space 4

dlabel gLogosImage1
.space 4

dlabel gLogosImage2
.space 4

dlabel D_800A0920
.space 1

dlabel D_800A0921
.space 1

dlabel D_800A0922
.space 2

dlabel D_800A0924
.space 4

dlabel D_800A0928
.space 8

dlabel D_800A0930
.space 1

dlabel D_800A0931
.space 1

dlabel D_800A0932
.space 2

dlabel D_800A0934
.space 0x0000000c

dlabel gMapTransitionAlpha
.space 2

dlabel gMapTransitionFadeRate
.space 2

dlabel gMapTransitionState
.space 2

dlabel gMapTransitionStateTime
.space 2

dlabel D_800A0948
.space 4

dlabel D_800A094C
.space 4

dlabel D_800A0950
.space 4

dlabel D_800A0954
.space 2

dlabel D_800A0956
.space 2

dlabel D_800A0958
.space 2

dlabel D_800A095A
.space 1

dlabel D_800A095B
.space 1

dlabel D_800A095C
.space 1

dlabel D_800A095D
.space 1

dlabel D_800A095E
.space 1

dlabel D_800A095F
.space 1

dlabel D_800A0960
.space 0x00000003

dlabel D_800A0963
.space 1

dlabel D_800A0964
.space 4

dlabel D_800A0968
.space 8

dlabel D_800A0970
.space 4

dlabel D_800A0974
.space 4

dlabel D_800A0978
.space 4

dlabel D_800A097C
.space 4

dlabel D_800A0980
.space 4

dlabel D_800A0984
.space 4

dlabel D_800A0988
.space 4

dlabel D_800A098C
.space 4

dlabel gWorldNpcList
.space 0x00000100

dlabel gBattleNpcList
.space 0x00000100

dlabel gCurrentNpcListPtr
.space 4

dlabel D_800A0B94
.space 4

dlabel D_800A0B98
.space 8

dlabel D_800A0BA0
.space 4

dlabel D_800A0BA4
.space 4

dlabel WorldMerleeOrbEffect
.space 4

dlabel WorldMerleeWaveEffect
.space 4

dlabel D_800A0BB0
.space 4

dlabel D_800A0BB4
.space 4

dlabel D_800A0BB8
.space 4

dlabel D_800A0BBC
.space 4

dlabel D_800A0BC0
.space 0x00000380

dlabel D_800A0F40
.space 4

dlabel D_800A0F44
.space 4

dlabel D_800A0F48
.space 8

dlabel D_800A0F50
.space 4

dlabel D_800A0F54
.space 4

dlabel nuAuMgrThread
.space 0x000025b8

dlabel AlCmdListBuffers
.space 0x0000000c

dlabel D_800A351C
.space 4

dlabel D_800A3520
.space 4

dlabel D_800A3524
.space 0x00000104

dlabel D_800A3628
.space 0x0000000c

dlabel AlFrameSize
.space 4

dlabel AlMinFrameSize
.space 4

dlabel D_800A363C
.space 4

dlabel nuAuDmaMesgQ
.space 4

dlabel D_800A3644
.space 0x00000014

dlabel nuAuDmaMesgBuf
.space 0x000000c8

dlabel nuAuDmaIOMesgBuf
.space 0x000004b0

dlabel nuAuDmaState
.space 4

dlabel D_800A3BD4
.space 4

dlabel D_800A3BD8
.space 8

dlabel nuAuDmaBufList
.space 0x000003e8

dlabel D_800A3FC8
.space 8

dlabel CurrentSeqCmdHandler
.space 4

dlabel D_800A3FD4
.space 0x0000000c

dlabel D_800A3FE0
.space 4

dlabel D_800A3FE4
.space 4

dlabel D_800A3FE8
.space 4

dlabel D_800A3FEC
.space 2

dlabel D_800A3FEE
.space 2

dlabel D_800A3FF0
.space 4

dlabel D_800A3FF4
.space 0x0000000c

dlabel gEffectGraphicsData
.space 0x000001b4

dlabel D_800A41B4
.space 0x0000000c

dlabel D_800A41C0
.space 4

dlabel D_800A41C4
.space 0x0000001c

dlabel gMapConfig
.space 4

dlabel D_800A41E4
.space 4

dlabel gMapSettings
.space 4

dlabel D_800A41EC
.space 0x00000044

dlabel gCollisionRayStartX
.space 4

dlabel gCollisionRayStartY
.space 4

dlabel gCollisionRayStartZ
.space 4

dlabel gCollisionRayDirX
.space 4

dlabel gCollisionRayDirY
.space 4

dlabel gCollisionRayDirZ
.space 4

dlabel gCollisionPointX
.space 4

dlabel gCollisionPointY
.space 4

dlabel gCollisionPointZ
.space 4

dlabel gCollisionRayLength
.space 4

dlabel gCollisionNormalX
.space 4

dlabel gCollisionNormalY
.space 4

dlabel gCollisionNormalZ
.space 4

dlabel gCollisionDataBackup
.space 4

dlabel gCollisionDataZoneBackup
.space 4

dlabel D_800A426C
.space 4

dlabel D_800A4270
.space 0x000001b0

dlabel D_800A4420
.space 0x000021b0

dlabel nuScStack
.space 0x00002000

dlabel nuScAudioStack
.space 0x00002000

dlabel nuScGraphicsStack
.space 0x00002000

dlabel D_800AC5D0
.space 4

dlabel D_800AC5D4
.space 0x00000014

dlabel D_800AC5E8
.space 0x000000c8

dlabel nuGfxMesgBuf
.space 0x00002020

dlabel nuContWaitMesgBuf
.space 4

dlabel nuContDataMutexBuf
.space 4

dlabel D_800AC6D8
.space 8

dlabel piThread
.space 0x1B0

dlabel piThreadStack
.space 0x1000

dlabel piEventQueue
.space 4

dlabel D_800AF890
.space 0x00000014

dlabel piEventBuf
.space 4

dlabel D_800AF8AC
.space 4

dlabel piAccessBuf
.space 4

dlabel D_800AF8B4
.space 0x0000000c

dlabel tmp_task
.space 0x00000040

dlabel siAccessBuf
.space 4

dlabel D_800AF904
.space 0x0000000c

dlabel retrace
.space 4

dlabel D_800AF914
.space 4

dlabel viThread
.space 4

dlabel D_800AF91C
.space 0x1B4

dlabel viThreadStack
.space 0x1000

dlabel viEventQueue
.space 4

dlabel D_800B0AD4
.space 0x00000014

dlabel viEventBuf
.space 4

dlabel D_800B0AEC
.space 0x00000014

dlabel viRetraceMsg
.space 2

dlabel D_800B0B02
.space 2

dlabel D_800B0B04
.space 4

dlabel D_800B0B08
.space 0x00000010

dlabel viCounterMsg
.space 2

dlabel D_800B0B1A
.space 2

dlabel D_800B0B1C
.space 4

dlabel D_800B0B20
.space 0x00000010

dlabel __MotorDataBuf
.space 4

dlabel D_800B0B34
.space 0x00000038

dlabel D_800B0B6C
.space 4

dlabel D_800B0B70
.space 0x000000c0

dlabel __osFlashID
.space 4

dlabel D_800B0C34
.space 0x0000000c

dlabel __osFlashMsg
.space 4

dlabel D_800B0C44
.space 0x00000014

dlabel __osFlashMessageQ
.space 4

dlabel D_800B0C5C
.space 0x00000014

dlabel __osFlashHandler
.space 4

dlabel D_800B0C74
.space 0x00000070

dlabel __osFlashMsgBuf
.space 4

dlabel __osFlashVersion
.space 4

dlabel D_800B0CEC
.space 4

dlabel wMapTexName
.space 4

dlabel D_800B0CF4
.space 0x00000014

dlabel D_800B0D08
.space 4

dlabel D_800B0D0C
.space 0x000001ac

dlabel nuContWaitMesgQ
.space 4

dlabel D_800B0EBC
.space 0x00000014

dlabel __osContPifRam
.space 4

dlabel D_800B0ED4
.space 0x00000034

dlabel D_800B0F08
.space 4

dlabel D_800B0F0C
.space 4

dlabel gCurrentEncounter
.space 0x00000bf8

dlabel __Dom2SpeedParam
.space 4

dlabel D_800B1B0C
.space 1

dlabel D_800B1B0D
.space 1

dlabel D_800B1B0E
.space 1

dlabel D_800B1B0F
.space 1

dlabel D_800B1B10
.space 4

dlabel D_800B1B14
.space 0x00000068

dlabel nuContStatus
.space 0x00000014

dlabel D_800B1B90
.space 0x000001b0

dlabel nuContRmbCtl
.space 0x00000028

dlabel nuContData
.space 0x00000018

dlabel gCameras
.space 0x00002560

dlabel gCollisionData
.space 4

dlabel D_800B42E4
.space 0x0000000c

dlabel nuGfxMesgQ
.space 4

dlabel D_800B42F4
.space 0x00000014

dlabel __CartRomHandle
.space 4

dlabel D_800B430C
.space 1

dlabel D_800B430D
.space 1

dlabel D_800B430E
.space 1

dlabel D_800B430F
.space 1

dlabel D_800B4310
.space 1

dlabel D_800B4311
.space 3

dlabel D_800B4314
.space 4

dlabel D_800B4318
.space 4

dlabel D_800B431C
.space 0x00000064

dlabel __osPiAccessQueue
.space 4

dlabel D_800B4384
.space 0x00000014

dlabel gEffectInstances
.space 0x00000180

dlabel __Dom1SpeedParam
.space 4

dlabel D_800B451C
.space 1

dlabel D_800B451D
.space 1

dlabel D_800B451E
.space 1

dlabel D_800B451F
.space 1

dlabel D_800B4520
.space 0x00002070

dlabel D_800B6590
.space 0x00002000

dlabel nuYieldBuf
.space 0x00000c10

dlabel auSynDriver
.space 0x00000030

dlabel D_800B91D0
.space 0x00020000

dlabel gZoneCollisionData
.space 0x00000010

dlabel wMapHitName
.space 0x00000018

dlabel nuSiMgrMesgQ
.space 0x00000018

dlabel __osBaseTimer
.space 0x20

dlabel wMapShapeName
.space 0x00000018

dlabel nuAuHeap
.space 0x00000030

dlabel nuGfxTask
.space 0x00000370

dlabel D_800D95E8
.space 0x00000038

dlabel D_800D9620
.space 0x00000048

dlabel wMapBgName
.space 0x00000018

dlabel __osPfsInodeCache
.space 0x00000100

dlabel rspbootUcodeBuffer
.space 0x00000100

dlabel D_800D9880
.space 0x00000700

dlabel __osEventStateTab
.space 0x00000080

dlabel __osPfsPifRam
.space 0x0000003c

dlabel D_800DA03C
.space 4

dlabel D_800DA040
.space 0x00000400

dlabel nusched
.space 4

dlabel D_800DA444
.space 0x00000038

dlabel D_800DA47C
.space 0x00000038

dlabel D_800DA4B4
.space 0x000000a8

dlabel D_800DA55C
.space 0x0000054c

dlabel D_800DAAA8
.space 0x00000010

dlabel AlNumFields
.space 4

dlabel D_800DAABC
.space 1

dlabel D_800DAABD
.space 3

dlabel __osEepromTimerQ
.space 0x00000018

dlabel nuContPfs
.space 0x000001a0

dlabel nuSiMesgQ
.space 0x00000018

dlabel D_800DAC90
.space 0x00000018

dlabel __osSiAccessQueue
.space 0x00000018

dlabel gCurrentSaveFile
.space 0x00001380

dlabel nuContDataMutexQ
.space 0x00000020

dlabel D_800DC060
.space 4

dlabel D_800DC064
.space 4

dlabel gBattleState
.space 4

dlabel D_800DC06C
.space 4

dlabel gBattleStatus
.space 0x00000460

dlabel D_800DC4D0
.space 4

dlabel D_800DC4D4
.space 4

dlabel D_800DC4D8
.space 4

dlabel gBattleState2
.space 4

dlabel D_800DC4E0
.space 4

dlabel D_800DC4E4
.space 4

dlabel D_800DC4E8
.space 2

dlabel gCurrentBattleSection
.space 1

dlabel D_800DC4EB
.space 1

dlabel D_800DC4EC
.space 4

dlabel D_800DC4F0
.space 4

dlabel D_800DC4F4
.space 4

dlabel D_800DC4F8
.space 4

dlabel D_800DC4FC
.space 4