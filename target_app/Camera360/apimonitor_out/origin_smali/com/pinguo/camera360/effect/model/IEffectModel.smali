.class public interface abstract Lcom/pinguo/camera360/effect/model/IEffectModel;
.super Ljava/lang/Object;
.source "IEffectModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
    }
.end annotation


# static fields
.field public static final sSceneCPUEffectValue:[Ljava/lang/String;

.field public static final sSceneEffectNewValue:[Ljava/lang/String;

.field public static final sSceneEffectOldValue:[Ljava/lang/String;

.field public static final sSceneGPUEffectValue:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "blackwhite"

    aput-object v1, v0, v3

    const-string/jumbo v1, "lomo105"

    aput-object v1, v0, v4

    const-string/jumbo v1, "lomo108"

    aput-object v1, v0, v5

    const-string/jumbo v1, "enhance"

    aput-object v1, v0, v6

    const-string/jumbo v1, "businesscolor"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "lomofilm"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "greenish"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "velvia_vivid"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "fakehdr"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "fakehdr_enhance"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "fisheye"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "sketch"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "colorsketch"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "linesketch"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "dream"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "backto1839"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "colorful"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "sketch_class,1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pinguo/camera360/effect/model/IEffectModel;->sSceneEffectOldValue:[Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "bw_class,0"

    aput-object v1, v0, v3

    const-string/jumbo v1, "lomo_class,0"

    aput-object v1, v0, v4

    const-string/jumbo v1, "lomo_class,2"

    aput-object v1, v0, v5

    const-string/jumbo v1, "enhance_class,0"

    aput-object v1, v0, v6

    const-string/jumbo v1, "enhance_class,7"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "lomo_class,1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "lomo_class,2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "enhance_class,4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "hdrpro_class,0"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "hdrpro_class,4"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "funny_class,5"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "sketch_class,2"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "sketch_class,4"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "sketch_class,8"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "dream"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "backto1839,/sdcard/Camera360/Data/test_old.png"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "colorful_class,0,0"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "sketch_class,8"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pinguo/camera360/effect/model/IEffectModel;->sSceneEffectNewValue:[Ljava/lang/String;

    const/16 v0, 0x5f

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "C360_Skin_Soft"

    aput-object v1, v0, v3

    const-string/jumbo v1, "C360_Skin_DepthClean"

    aput-object v1, v0, v4

    const-string/jumbo v1, "C360_Skin_SoftWhitening"

    aput-object v1, v0, v5

    const-string/jumbo v1, "C360_Skin_DepthWhitening"

    aput-object v1, v0, v6

    const-string/jumbo v1, "C360_Skin_CleanBW"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "C360_Skin_Sunshine"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "C360_Skin_Greenish"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "C360_Skin_RedLip"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "C360_Skin_Sweet"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "C360_LightColor_SweetRed"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "C360_LightColor_ColorBlue"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "LightColor_Lighting;Offset=1,0;Direct=0"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "LightColor_Lighting;Offset=0,1;Direct=1"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "C360_LightColor_Beauty"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "C360_LightColor_Cyan"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "C360_LightColor_LowSatGreen"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "C360_LightColor_NatureFresh"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "C360_LightColor_NatureWarm"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "C360_LOMO_Cyan"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "C360_LOMO_Film"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "C360_LOMO_Greenish"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "C360_LOMO_Fashion"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "C360_LOMO_Recall"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "C360_LOMO_Cold"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "C360_LOMO_Warm"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "C360_LOMO_Zest"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "C360_LOMO_Leaf"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "C360_Enhance_Auto"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "C360_Enhance_Night"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "C360_Enhance_Room"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "C360_Enhance_Warm"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "C360_Enhance_Cool"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "C360_Enhance_Vivid"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "C360_Enhance_Strong"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "C360_Enhance_Balance"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "C360_Enhance_Cold"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "C360_Retro_Decadent"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "C360_Retro_Hazy"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "C360_Retro_Rustic"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "C360_Retro_Recall"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "C360_Retro_Blue"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "C360_Retro_Turn"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "C360_Retro_Yellow"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "C360_Retro_Greenish"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "C360_Retro_Blueish"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "C360_HDR_ORIGINAL"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "C360_HDR_Soft"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "C360_HDR_Vivid"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "C360_HDR_Enhance"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "C360_HDR_Shine"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "C360_HDR_Storm"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "C360_Sketch_Line"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "C360_Sketch_BW"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "C360_Sketch_Yellow"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "C360_Sketch_Color"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "C360_Sketch_ColorMul"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v2, "C360_Sketch_Neon"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v2, "C360_Sketch_WideLine"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v2, "C360_Sketch_LightColor"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "C360_Sketch_SoftColor"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string/jumbo v2, "C360_Colorful_rainbow"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string/jumbo v2, "C360_Colorful_Crystal"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string/jumbo v2, "C360_Colorful_Sky"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string/jumbo v2, "C360_Colorful_Cloud"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string/jumbo v2, "C360_Colorful_Ripple"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string/jumbo v2, "C360_Colorful_Vivid"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string/jumbo v2, "C360_Colorful_Flow"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string/jumbo v2, "C360_Colorful_Red"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string/jumbo v2, "C360_Colorful_Gold"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string/jumbo v2, "C360_Colorful_Purple"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string/jumbo v2, "C360_Dream_Stand"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string/jumbo v2, "C360_Old_BackTo1839"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string/jumbo v2, "Funny_Mirror;mirrorType=0"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string/jumbo v2, "Funny_Mirror;mirrorType=1"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string/jumbo v2, "Funny_Mirror;mirrorType=2"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string/jumbo v2, "Funny_Mirror;mirrorType=3"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string/jumbo v2, "Funny_FishEye_Android;radius=0.5;amount=0.8"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string/jumbo v2, "C360_Funny_Pop1"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string/jumbo v2, "C360_Funny_Pop2"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string/jumbo v2, "C360_Funny_Pop3"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string/jumbo v2, "C360_Funny_Pop4"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string/jumbo v2, "C360_ShiftColor_Red1"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string/jumbo v2, "C360_ShiftColor_Red2"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string/jumbo v2, "C360_ShiftColor_Yellow1"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string/jumbo v2, "C360_ShiftColor_Green"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string/jumbo v2, "C360_ShiftColor_Blue"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string/jumbo v2, "C360_ShiftColor_SkyBlue"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string/jumbo v2, "C360_ShiftColor_Yellow2"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string/jumbo v2, "C360_ShiftColor_Purple"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string/jumbo v2, "C360_ShiftColor_Summer"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string/jumbo v2, "C360_BW_Normal"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string/jumbo v2, "C360_BW_Enhance"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string/jumbo v2, "C360_BW_Strong"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string/jumbo v2, "C360_BW_Storm"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string/jumbo v2, "C360_BW_Art"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pinguo/camera360/effect/model/IEffectModel;->sSceneGPUEffectValue:[Ljava/lang/String;

    const/16 v0, 0x5f

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "skin_class,0"

    aput-object v1, v0, v3

    const-string/jumbo v1, "skin_class,1"

    aput-object v1, v0, v4

    const-string/jumbo v1, "skin_class,2"

    aput-object v1, v0, v5

    const-string/jumbo v1, "skin_class,3"

    aput-object v1, v0, v6

    const-string/jumbo v1, "skin_class,4"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "skin_class,5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "skin_class,6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "skin_class,7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "skin_class,8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "lightcolor_class,0"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "lightcolor_class,2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "lightcolor_class,9,1"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "lightcolor_class,7"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "lightcolor_class,9,0"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "lightcolor_class,6"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "lightcolor_class,13"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "lightcolor_class,14"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "lightcolor_class,15"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "lomo_class,0"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "lomo_class,2"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "lomo_class,1"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "lomo_class,9"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "lomo_class,5"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "lomo_class,10"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "lomo_class,7"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "lomo_class,8"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "lomo_class,4"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "enhance_class,0"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "enhance_class,6"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "enhance_class,1"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "enhance_class,7"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "enhance_class,9"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "enhance_class,4"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "enhance_class,3"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "enhance_class,5"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "enhance_class,8"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "retro_class,0"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "retro_class,1"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "retro_class,2"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "retro_class,4"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "retro_class,5"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "retro_class,6"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "retro_class,8"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "retro_class,9"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "retro_class,10"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "hdrpro_class,200,50,50,0,0"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "hdrpro_class,0"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "hdrpro_class,2"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "hdrpro_class,4"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "hdrpro_class,100,2,6,18,20"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "hdrpro_class,100,4,5,40,40"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "sketch_class,8"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "sketch_class,2"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "sketch_class,15,0"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "sketch_class,4"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "sketch_class,11,0"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v2, "sketch_class,16,0"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v2, "sketch_class,9"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v2, "sketch_class,14,0"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "sketch_class,10"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string/jumbo v2, "colorful_class,0,0"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string/jumbo v2, "colorful_class,0,1"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string/jumbo v2, "colorful_class,0,2"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string/jumbo v2, "colorful_class,0,3"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string/jumbo v2, "colorful_class,0,4"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string/jumbo v2, "colorful_class,0,5"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string/jumbo v2, "colorful_class,0,6"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string/jumbo v2, "colorful_class,0,7"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string/jumbo v2, "colorful_class,0,8"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string/jumbo v2, "colorful_class,0,9"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string/jumbo v2, "dream"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string/jumbo v2, "backto1839,/sdcard/Camera360/Data/test_old.png"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string/jumbo v2, "funny_class,0"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string/jumbo v2, "funny_class,1"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string/jumbo v2, "funny_class,2"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string/jumbo v2, "funny_class,3"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string/jumbo v2, "funny_class,4"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string/jumbo v2, "funny_class,5"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string/jumbo v2, "funny_class,6"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string/jumbo v2, "funny_class,7"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string/jumbo v2, "funny_class,8"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string/jumbo v2, "bw_class,100,235,54,157,40,50"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string/jumbo v2, "bw_class,100,255,0,0,40,20"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string/jumbo v2, "bw_class,100,245,80,0,30,50"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string/jumbo v2, "bw_class,100,115,255,100,70,70"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string/jumbo v2, "bw_class,100,0,50,255,32,70"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string/jumbo v2, "bw_class,100,0,170,255,40,40"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string/jumbo v2, "bw_class,100,255,255,0,35,50"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string/jumbo v2, "bw_class,100,150,0,255,60,55"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string/jumbo v2, "bw_class,100,10,255,145,105,80"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string/jumbo v2, "bw_class,0"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string/jumbo v2, "bw_class,1"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string/jumbo v2, "bw_class,2"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string/jumbo v2, "bw_class,3"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string/jumbo v2, "bw_class,4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pinguo/camera360/effect/model/IEffectModel;->sSceneCPUEffectValue:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract clearEffectNewFlag(Ljava/lang/String;)V
.end method

.method public abstract clearEffectTypeNewFlag(Ljava/lang/String;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract getEffectByKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/Effect;
.end method

.method public abstract getEffectTypeByEffectKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
.end method

.method public abstract getEffectTypeByKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
.end method

.method public abstract getEffectTypes(Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/effect/model/entity/EffectType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEffects(Lcom/pinguo/camera360/effect/model/entity/EffectType;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/camera360/effect/model/entity/EffectType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/effect/model/entity/Effect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEffectsByPackKey(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/effect/model/entity/Effect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEffectsByTypeKey(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/effect/model/entity/Effect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstalledDir()Ljava/io/File;
.end method

.method public abstract getPackKeyListInEffectType(Lcom/pinguo/camera360/effect/model/entity/EffectType;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/camera360/effect/model/entity/EffectType;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getShaderDir()Ljava/lang/String;
.end method

.method public abstract install(Lcom/pinguo/camera360/shop/model/entity/EffectPackage;Lcom/pinguo/camera360/base/BaseModel$Callback;)Z
.end method

.method public abstract uninstall(Lcom/pinguo/camera360/shop/model/entity/EffectPackage;Lcom/pinguo/camera360/base/BaseModel$Callback;)Z
.end method

.method public abstract updateEffectTypeList(Ljava/util/List;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/effect/model/entity/EffectType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/effect/model/entity/EffectType;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract updateFrontImage(Ljava/lang/String;Ljava/lang/String;)Z
.end method
