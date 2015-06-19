.class public Lcom/pinguo/camera360/photoedit/PictureInfo;
.super Ljava/lang/Object;
.source "PictureInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final COMP_MODE_CPU:I = 0x2

.field public static final COMP_MODE_GPU_SCALE:I = 0x1

.field public static final COMP_MODE_NONE:I = 0x0

.field public static final NOT_PREVIEW:I = -0x1

.field public static final PIC_FRAME_16X9:I = 0x1

.field public static final PIC_FRAME_1X1:I = 0x4

.field public static final PIC_FRAME_3X2:I = 0x3

.field public static final PIC_FRAME_4X3:I = 0x2

.field public static final PIC_FRAME_CRICLE:I = 0x5

.field public static final PIC_FRAME_NONE:I = 0x0

.field public static final PIC_TYPE_EASY_CAMERA:I = 0x4

.field public static final PIC_TYPE_EDIT:I = 0xcb

.field public static final PIC_TYPE_EFFECT:I = 0x0

.field public static final PIC_TYPE_IDPHOTO:I = 0xcc

.field public static final PIC_TYPE_IDPHOTO_EXPORT:I = 0xcd

.field public static final PIC_TYPE_NO_EFFECT:I = 0x1

.field public static final PIC_TYPE_PUZZLE:I = 0x65

.field public static final PIC_TYPE_PUZZLE_SPLICE:I = 0x66

.field public static final PIC_TYPE_RPLACE_EFFECT:I = 0xca

.field public static final PIC_TYPE_SCENE:I = 0x3

.field public static final PIC_TYPE_SONY_CAMERA:I = 0x6

.field public static final PIC_TYPE_SOUND:I = 0x2

.field public static final PIC_TYPE_SUPERIMPOSE_EFFECT:I = 0xc9

.field public static final PIC_TYPE_VIDEO:I = 0x5


# instance fields
.field private cameraModeIndex:I

.field private effectAlias:Ljava/lang/String;

.field private effectAppendix:Lcom/pinguo/camera360/photoedit/effect/EffectAppend;

.field private effectPath:Ljava/lang/String;

.field private exifData:[B

.field private exifRotation:I

.field private fromCamera360:Z

.field private isAddTimeWaterMark:Z

.field private mEffect:Lcom/pinguo/camera360/effect/model/entity/Effect;

.field private mJsonEx:Ljava/lang/String;

.field private mLocation:Lcom/pinguo/lib/location/data/PGLocation;

.field private mPictureType:I

.field private mSceneParam:Ljava/lang/String;

.field private mScenePath:Ljava/lang/String;

.field private mSoundData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[S>;"
        }
    .end annotation
.end field

.field private mSoundInfo:Ljava/lang/String;

.field private makeGPU:Z

.field private orgPath:Ljava/lang/String;

.field private orgTakenTime:J

.field private picFrame:I

.field private picSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

.field private previewLength:I

.field private quality:I

.field private rotation:I

.field private takenTime:J

.field private thumbnailLength:I


# direct methods
.method public constructor <init>()V
    .registers 6

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->picSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    iput v1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->previewLength:I

    iput v1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->thumbnailLength:I

    iput-wide v3, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->orgTakenTime:J

    iput-boolean v1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->fromCamera360:Z

    iput-wide v3, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->takenTime:J

    iput v1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->rotation:I

    const/16 v0, 0x5f

    iput v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->quality:I

    iput-object v2, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->effectPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->orgPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->effectAlias:Ljava/lang/String;

    iput-object v2, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->effectAppendix:Lcom/pinguo/camera360/photoedit/effect/EffectAppend;

    iput-boolean v1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->makeGPU:Z

    iput-object v2, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mScenePath:Ljava/lang/String;

    iput-object v2, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mSceneParam:Ljava/lang/String;

    iput v1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mPictureType:I

    iput v1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->exifRotation:I

    iput-object v2, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->exifData:[B

    iput v1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->picFrame:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mJsonEx:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->picSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    iput v1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->previewLength:I

    iput v1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->thumbnailLength:I

    iput-wide v3, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->orgTakenTime:J

    iput-boolean v1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->fromCamera360:Z

    iput-wide v3, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->takenTime:J

    iput v1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->rotation:I

    const/16 v0, 0x5f

    iput v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->quality:I

    iput-object v2, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->effectPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->orgPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->effectAlias:Ljava/lang/String;

    iput-object v2, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->effectAppendix:Lcom/pinguo/camera360/photoedit/effect/EffectAppend;

    iput-boolean v1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->makeGPU:Z

    iput-object v2, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mScenePath:Ljava/lang/String;

    iput-object v2, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mSceneParam:Ljava/lang/String;

    iput v1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mPictureType:I

    iput v1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->exifRotation:I

    iput-object v2, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->exifData:[B

    iput v1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->picFrame:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mJsonEx:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method protected static adjustPictureInfo(Lcom/pinguo/camera360/photoedit/PictureInfo;)Lcom/pinguo/camera360/photoedit/PictureInfo;
    .registers 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffect()Lcom/pinguo/camera360/effect/model/entity/Effect;

    move-result-object v1

    if-nez v1, :cond_18

    invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;

    move-result-object v4

    invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectByKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/Effect;

    move-result-object v1

    if-eqz v1, :cond_4f

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffect(Lcom/pinguo/camera360/effect/model/entity/Effect;)V

    :cond_18
    :goto_18
    invoke-virtual {v1}, Lcom/pinguo/camera360/effect/model/entity/Effect;->haveGPUCmd()Z

    move-result v3

    invoke-virtual {v1}, Lcom/pinguo/camera360/effect/model/entity/Effect;->haveCpuCmd()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPicEditCompatibilityMode()I

    move-result v0

    if-eqz v3, :cond_2f

    const/4 v4, 0x2

    if-ne v0, v4, :cond_33

    :cond_2f
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setMakeGPU(Z)V

    :cond_33
    if-nez v2, :cond_3b

    if-eqz v3, :cond_3b

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setMakeGPU(Z)V

    :cond_3b
    if-nez v2, :cond_4e

    if-nez v3, :cond_4e

    sget-object v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffect(Lcom/pinguo/camera360/effect/model/entity/Effect;)V

    sget-object v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;

    iget-object v4, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAlias(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAppendix(Lcom/pinguo/camera360/photoedit/effect/EffectAppend;)V

    :cond_4e
    return-object p0

    :cond_4f
    sget-object v1, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffect(Lcom/pinguo/camera360/effect/model/entity/Effect;)V

    iget-object v4, v1, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAlias(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAppendix(Lcom/pinguo/camera360/photoedit/effect/EffectAppend;)V

    goto :goto_18
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/photoedit/PictureInfo;

    iget-object v1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->picSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    iput-object v1, v0, Lcom/pinguo/camera360/photoedit/PictureInfo;->picSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    iget-object v1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mLocation:Lcom/pinguo/lib/location/data/PGLocation;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setLocation(Lcom/pinguo/lib/location/data/PGLocation;)V

    return-object v0
.end method

.method public getAddTimerWaterMark()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->isAddTimeWaterMark:Z

    return v0
.end method

.method public getCameraModeIndex()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->cameraModeIndex:I

    return v0
.end method

.method public getEffect()Lcom/pinguo/camera360/effect/model/entity/Effect;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mEffect:Lcom/pinguo/camera360/effect/model/entity/Effect;

    return-object v0
.end method

.method public getEffectAlias()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->effectAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getEffectAppendix()Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->effectAppendix:Lcom/pinguo/camera360/photoedit/effect/EffectAppend;

    return-object v0
.end method

.method public getEffectPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->effectPath:Ljava/lang/String;

    return-object v0
.end method

.method public getExif()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExifData()[B
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->exifData:[B

    return-object v0
.end method

.method public getExifRotation()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->exifRotation:I

    return v0
.end method

.method public getJsonEx()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mJsonEx:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/pinguo/lib/location/data/PGLocation;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mLocation:Lcom/pinguo/lib/location/data/PGLocation;

    return-object v0
.end method

.method public getOrgPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->orgPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPicFrame()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->picFrame:I

    return v0
.end method

.method public getPicSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->picSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    return-object v0
.end method

.method public getPictureType()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mPictureType:I

    return v0
.end method

.method public getPreviewLength()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->previewLength:I

    return v0
.end method

.method public getQuality()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->quality:I

    return v0
.end method

.method public getRotation()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->rotation:I

    return v0
.end method

.method public getSceneParam()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mSceneParam:Ljava/lang/String;

    return-object v0
.end method

.method public getScenePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mScenePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[S>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mSoundData:Ljava/util/List;

    return-object v0
.end method

.method public getSoundInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mSoundInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcTakenTime()J
    .registers 3

    iget-wide v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->orgTakenTime:J

    return-wide v0
.end method

.method public getTakenTime()J
    .registers 3

    iget-wide v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->takenTime:J

    return-wide v0
.end method

.method public getThumbnailLength()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->thumbnailLength:I

    return v0
.end method

.method public isFromCamera360()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->fromCamera360:Z

    return v0
.end method

.method public isMakeGPU()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->makeGPU:Z

    return v0
.end method

.method public makeCopy()Lcom/pinguo/camera360/photoedit/PictureInfo;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/photoedit/PictureInfo;

    iget-object v2, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->exifData:[B

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->exifData:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, v1, Lcom/pinguo/camera360/photoedit/PictureInfo;->exifData:[B
    :try_end_14
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-object v1

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_14
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 2

    return-void
.end method

.method public renderAsEffect()Z
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mPictureType:I

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mPictureType:I

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_2c

    iget v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mPictureType:I

    const/16 v1, 0xca

    if-eq v0, v1, :cond_2c

    iget v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mPictureType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2c

    iget v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mPictureType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2c

    iget v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mPictureType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2c

    iget v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mPictureType:I

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_2c

    iget v0, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mPictureType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2c

    const/4 v0, 0x0

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x1

    goto :goto_2b
.end method

.method public setAddTimeWaterMark(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->isAddTimeWaterMark:Z

    return-void
.end method

.method public setCameraModeIndex(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->cameraModeIndex:I

    return-void
.end method

.method public setEffect(Lcom/pinguo/camera360/effect/model/entity/Effect;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mEffect:Lcom/pinguo/camera360/effect/model/entity/Effect;

    return-void
.end method

.method public setEffectAlias(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->effectAlias:Ljava/lang/String;

    return-void
.end method

.method public setEffectAppendix(Lcom/pinguo/camera360/photoedit/effect/EffectAppend;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->effectAppendix:Lcom/pinguo/camera360/photoedit/effect/EffectAppend;

    return-void
.end method

.method public setEffectPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->effectPath:Ljava/lang/String;

    return-void
.end method

.method public setExifData([B)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->exifData:[B

    return-void
.end method

.method public setExifRotation(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->exifRotation:I

    return-void
.end method

.method public setFromCamera360(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->fromCamera360:Z

    return-void
.end method

.method public setJsonEx(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mJsonEx:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Lcom/pinguo/lib/location/data/PGLocation;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mLocation:Lcom/pinguo/lib/location/data/PGLocation;

    return-void
.end method

.method public setMakeGPU(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->makeGPU:Z

    return-void
.end method

.method public setOrgPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->orgPath:Ljava/lang/String;

    return-void
.end method

.method public setPicFrame(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->picFrame:I

    return-void
.end method

.method public setPicSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->picSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    return-void
.end method

.method public setPictureType(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mPictureType:I

    return-void
.end method

.method public setPreviewLength(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->previewLength:I

    return-void
.end method

.method public setQuality(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->quality:I

    return-void
.end method

.method public setRotation(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->rotation:I

    return-void
.end method

.method public setSceneParam(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mSceneParam:Ljava/lang/String;

    return-void
.end method

.method public setScenePath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mScenePath:Ljava/lang/String;

    return-void
.end method

.method public setSoundData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[S>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mSoundData:Ljava/util/List;

    return-void
.end method

.method public setSoundInfo(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->mSoundInfo:Ljava/lang/String;

    return-void
.end method

.method public setSrcTakenTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->orgTakenTime:J

    return-void
.end method

.method public setTakenTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->takenTime:J

    return-void
.end method

.method public setThumbnailLength(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/photoedit/PictureInfo;->thumbnailLength:I

    return-void
.end method
