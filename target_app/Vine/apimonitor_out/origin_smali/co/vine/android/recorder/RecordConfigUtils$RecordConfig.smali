.class public Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
.super Ljava/lang/Object;
.source "RecordConfigUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/RecordConfigUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecordConfig"
.end annotation


# static fields
.field private static final CAMERA_SWITCH_ENABLED:Z = true

#the value of this static final field might be set in the static constructor
.field public static final DISABLE_FACE_RECOGNITION:Z = false

.field private static final FLASH_SWITCH_ENABLED:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FORCE_AUTO_FOCUS:Z = false

.field private static final INITIAL_VIDEO_BUFFER_COUNT:I = 0xaa

.field private static final INVALID_ASPECT_RATIO:F = 0.0f

#the value of this static final field might be set in the static constructor
.field public static final IS_ZERO_INDEX_BASED_ZOOM:Z = false

.field private static final KEY_ASPECT_RATIO_OVERRIDE_bf:Ljava/lang/String; = "aspect_ratio_or_bf"

.field private static final KEY_ASPECT_RATIO_OVERRIDE_ff:Ljava/lang/String; = "aspect_ratio_or_ff"

.field private static final KEY_BUFFER_SIZE:Ljava/lang/String; = "bufferSize"

.field private static final KEY_CAMERA_SWITCH_ENABLED:Ljava/lang/String; = "cameraSwitchEnabled"

.field private static final KEY_FLASH_SWITCH_ENABLED:Ljava/lang/String; = "flashSwitchEnabled"

.field private static final KEY_FRAME_RATE:Ljava/lang/String; = "frameRate"

.field private static final KEY_MAX_DURATION:Ljava/lang/String; = "maxDuration"

.field private static final KEY_PREALLOCATE_BUFFER:Ljava/lang/String; = "preAllocateBuffer"

.field private static final KEY_PREF:Ljava/lang/String; = "RecordConfig"

.field private static final KEY_PREVIEW_HEIGHT:Ljava/lang/String; = "previewHeight"

.field private static final KEY_PREVIEW_WIDTH:Ljava/lang/String; = "previewWidth"

.field private static final KEY_PRE_RATIO:Ljava/lang/String; = "pre_ratio"

.field private static final KEY_PROCESS_ON_SD:Ljava/lang/String; = "processOnSD"

.field private static final KEY_RECORDING_ENABLED:Ljava/lang/String; = "recordingEnabled"

.field private static final KEY_SET_RECORDING_HINT_bf:Ljava/lang/String; = "set_recording_hint_bf"

.field private static final KEY_SET_RECORDING_HINT_ff:Ljava/lang/String; = "set_recording_hint_ff"

.field private static final KEY_TARGET_SIZE:Ljava/lang/String; = "targetSize"

.field private static final KEY_UPDATE_TIME:Ljava/lang/String; = "updateTime"

.field private static final KEY_ZOOM_ENABLED:Ljava/lang/String; = "zoomEnabled"

.field private static final PREVIEW_WIDTH:I = 0x280

.field private static final PRE_ALLOCATE_RATIO:F = 1.5f

#the value of this static final field might be set in the static constructor
.field private static final PROCESS_ON_SD_CARD:Z = false

.field private static final PROGRESS_MAX:I = 0x1770

.field private static final SET_RECORDING_HINT_bf:Z = true

.field private static final SET_RECORDING_HINT_ff:Z = true

#the value of this static final field might be set in the static constructor
.field public static final SHOULD_DISABLE_BACKFACING_SET_RECORDING_HINT:Z = false

#the value of this static final field might be set in the static constructor
.field public static final SHOULD_DISABLE_FRONTFACING_SET_RECORDING_HINT:Z = false

#the value of this static final field might be set in the static constructor
.field public static final SHOULD_FORCE_SMOOTH_ZOOM:Z = false

.field public static final SHOULD_OVERRIDED_FRONTFACING_ASPECT_RATIO:Z = false

.field public static final SHOULD_OVERRIDE_BACKFACING_ASPECT_RATIO:Z = false

#the value of this static final field might be set in the static constructor
.field public static final SHOULD_SHOW_ZOOM_SLIDER:Z = false

.field private static final SIX_SECONDS:F = 6000.0f

.field private static final TARGET_FRAME_RATE:I = 0x1e

.field private static final ZOOM_ENABLED:Z = true


# instance fields
.field public final backFacingAspectRatioOverride:F

.field public final backFacingRecordingHint:Z

.field public final bufferCount:I

.field public final cameraSwitchEnabled:Z

.field public final flashSwitchEnabled:Z

.field public final frontFacingAspectRatioOverride:F

.field public final frontFacingRecordingHint:Z

.field public final highQuality:Z

.field public final isZoomButtonEnabled:Z

.field public final maxDuration:I

.field public final memRatio:D

.field public final preAllocRatio:D

.field public final preAllocateBuffer:Z

.field public final previewHeight:I

.field public final previewWidth:I

.field public final processDir:Ljava/io/File;

.field public final processOnSd:Z

.field public final recordingEnabled:Z

.field public final targetFrameRate:I

.field public final targetSize:I

.field public final zoomEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v3, "SM-C115"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v0, v3, :cond_158

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SM-C11"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_158

    move v0, v1

    :goto_1b
    sput-boolean v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->SHOULD_FORCE_SMOOTH_ZOOM:Z

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v3, "SM-C115"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v0, v3, :cond_15b

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SM-C11"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15b

    move v0, v1

    :goto_36
    sput-boolean v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->DISABLE_FACE_RECOGNITION:Z

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Nexus 5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SM-N900"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15e

    :cond_4c
    move v0, v1

    :goto_4d
    sput-boolean v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->SHOULD_DISABLE_FRONTFACING_SET_RECORDING_HINT:Z

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SGH-I747"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a9

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SGH-T999"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a9

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SGH-N064"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a9

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SC-06D"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a9

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SCH-J021"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a9

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SCH-R530"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a9

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SCH-I535"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a9

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SCL21"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a9

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SCH-S960L"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_161

    :cond_a9
    move v0, v1

    :goto_aa
    sput-boolean v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->SHOULD_DISABLE_BACKFACING_SET_RECORDING_HINT:Z

    sget-boolean v0, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z

    if-nez v0, :cond_ba

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SM-C11"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_164

    :cond_ba
    move v0, v1

    :goto_bb
    sput-boolean v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->SHOULD_SHOW_ZOOM_SLIDER:Z

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v3, "SM-C115"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v0, v3, :cond_167

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SM-C11"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_167

    move v0, v1

    :goto_d6
    sput-boolean v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->IS_ZERO_INDEX_BASED_ZOOM:Z

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "GT-I9505"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_150

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "GT-I9506"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_150

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "GT-I9500"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_150

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SGH-I337"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_150

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SGH-M919"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_150

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SCH-I545"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_150

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SPH-L720"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_150

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "GT-I9508"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_150

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SHV-E300"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_150

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SCH-R970"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_150

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SM-N900"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_150

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "LG-D801"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_151

    :cond_150
    move v2, v1

    :cond_151
    sput-boolean v2, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->FORCE_AUTO_FOCUS:Z

    sget-boolean v0, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z

    sput-boolean v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->PROCESS_ON_SD_CARD:Z

    return-void

    :cond_158
    move v0, v2

    goto/16 :goto_1b

    :cond_15b
    move v0, v2

    goto/16 :goto_36

    :cond_15e
    move v0, v2

    goto/16 :goto_4d

    :cond_161
    move v0, v2

    goto/16 :goto_aa

    :cond_164
    move v0, v2

    goto/16 :goto_bb

    :cond_167
    move v0, v2

    goto/16 :goto_d6
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 16

    const/4 v13, 0x0

    const-wide/high16 v11, 0x3ff0

    const-wide v7, 0x3fe999999999999aL

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, v3}, Lco/vine/android/util/SystemUtil;->getMemoryRatio(Landroid/content/Context;Z)D

    move-result-wide v5

    iput-wide v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->memRatio:D

    iget-wide v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->memRatio:D

    cmpl-double v5, v5, v11

    if-ltz v5, :cond_116

    move v0, v3

    :goto_1a
    iput-boolean v3, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->highQuality:Z

    const-string v5, "RecordConfig"

    invoke-virtual {p1, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-wide v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->memRatio:D

    const-wide/high16 v9, 0x4000

    cmpl-double v5, v5, v9

    if-ltz v5, :cond_119

    const-string v5, "pre_ratio"

    const/high16 v6, 0x3fc0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    float-to-double v5, v5

    :goto_33
    iput-wide v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->preAllocRatio:D

    const-string v5, "preAllocateBuffer"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->preAllocateBuffer:Z

    const-string v5, "recordingEnabled"

    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->recordingEnabled:Z

    const-string v5, "zoomEnabled"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->zoomEnabled:Z

    sget-boolean v5, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->PROCESS_ON_SD_CARD:Z

    if-nez v5, :cond_5b

    const-string v5, "processOnSD"

    sget-boolean v6, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->PROCESS_ON_SD_CARD:Z

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_11c

    :cond_5b
    const-string v5, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11c

    move v5, v3

    :goto_68
    iput-boolean v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->processOnSd:Z

    iget-boolean v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->processOnSd:Z

    if-eqz v5, :cond_11f

    invoke-static {}, Lco/vine/android/recorder/RecordConfigUtils;->access$000()Ljava/io/File;

    move-result-object v5

    :goto_72
    iput-object v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->processDir:Ljava/io/File;

    const-string v5, "cameraSwitchEnabled"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_125

    invoke-static {}, Lco/vine/android/recorder/CameraManager;->hasFrontFacingCamera()Z

    move-result v5

    if-eqz v5, :cond_125

    invoke-static {}, Lco/vine/android/recorder/CameraManager;->hasBackFacingCamera()Z

    move-result v5

    if-eqz v5, :cond_125

    move v5, v3

    :goto_89
    iput-boolean v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->cameraSwitchEnabled:Z

    const-string v5, "flashSwitchEnabled"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->flashSwitchEnabled:Z

    const-string v5, "frameRate"

    const/16 v6, 0x1e

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetFrameRate:I

    const-string v5, "targetSize"

    const/16 v6, 0x1e0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetSize:I

    const-string v5, "previewWidth"

    const/16 v6, 0x280

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget-boolean v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->highQuality:Z

    if-eqz v5, :cond_128

    move v5, v3

    :goto_b4
    div-int v5, v6, v5

    iput v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewWidth:I

    const-string v5, "previewHeight"

    const/16 v6, 0x1e0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget-boolean v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->highQuality:Z

    if-eqz v5, :cond_12a

    move v5, v3

    :goto_c5
    div-int v5, v6, v5

    iput v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewHeight:I

    const-string v5, "maxDuration"

    const/16 v6, 0x1770

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->maxDuration:I

    const-string v5, "bufferSize"

    const/16 v6, 0xaa

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->maxDuration:I

    int-to-float v6, v6

    const v9, 0x45bb8000

    div-float/2addr v6, v9

    mul-float/2addr v5, v6

    float-to-int v1, v5

    iget-wide v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->memRatio:D

    cmpl-double v5, v5, v11

    if-lez v5, :cond_12c

    :goto_eb
    iput v1, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->bufferCount:I

    const-string v5, "aspect_ratio_or_ff"

    invoke-interface {v2, v5, v13}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    iput v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->frontFacingAspectRatioOverride:F

    const-string v5, "aspect_ratio_or_bf"

    invoke-interface {v2, v5, v13}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    iput v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->backFacingAspectRatioOverride:F

    sget-boolean v5, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->SHOULD_DISABLE_FRONTFACING_SET_RECORDING_HINT:Z

    if-eqz v5, :cond_130

    move v5, v4

    :goto_102
    iput-boolean v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->frontFacingRecordingHint:Z

    sget-boolean v5, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->SHOULD_DISABLE_BACKFACING_SET_RECORDING_HINT:Z

    if-eqz v5, :cond_137

    move v5, v4

    :goto_109
    iput-boolean v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->backFacingRecordingHint:Z

    sget-boolean v5, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->SHOULD_SHOW_ZOOM_SLIDER:Z

    if-eqz v5, :cond_13e

    iget-boolean v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->zoomEnabled:Z

    if-eqz v5, :cond_13e

    :goto_113
    iput-boolean v3, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->isZoomButtonEnabled:Z

    return-void

    :cond_116
    move v0, v4

    goto/16 :goto_1a

    :cond_119
    move-wide v5, v7

    goto/16 :goto_33

    :cond_11c
    move v5, v4

    goto/16 :goto_68

    :cond_11f
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    goto/16 :goto_72

    :cond_125
    move v5, v4

    goto/16 :goto_89

    :cond_128
    const/4 v5, 0x2

    goto :goto_b4

    :cond_12a
    const/4 v5, 0x2

    goto :goto_c5

    :cond_12c
    int-to-double v5, v1

    mul-double/2addr v5, v7

    double-to-int v1, v5

    goto :goto_eb

    :cond_130
    const-string v5, "set_recording_hint_ff"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_102

    :cond_137
    const-string v5, "set_recording_hint_bf"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_109

    :cond_13e
    move v3, v4

    goto :goto_113
.end method

.method public static needsUpdate(Landroid/content/Context;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "RecordConfig"

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "updateTime"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x493e0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method public static declared-synchronized update(Landroid/content/Context;Lorg/json/JSONObject;)Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
    .registers 9

    const-class v3, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    monitor-enter v3

    :try_start_3
    const-string v2, "Update config: {}."

    invoke-static {v2, p1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    invoke-direct {v1, p0}, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;-><init>(Landroid/content/Context;)V

    const-string v2, "RecordConfig"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "preAllocateBuffer"

    const-string v4, "preAllocateBuffer"

    iget-boolean v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->preAllocateBuffer:Z

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "recordingEnabled"

    const-string v4, "recordingEnabled"

    iget-boolean v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->recordingEnabled:Z

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "zoomEnabled"

    const-string v4, "zoomEnabled"

    iget-boolean v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->zoomEnabled:Z

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "cameraSwitchEnabled"

    const-string v4, "cameraSwitchEnabled"

    iget-boolean v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->cameraSwitchEnabled:Z

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "flashSwitchEnabled"

    const-string v4, "flashSwitchEnabled"

    iget-boolean v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->flashSwitchEnabled:Z

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "processOnSD"

    const-string v4, "processOnSD"

    iget-boolean v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->processOnSd:Z

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "set_recording_hint_ff"

    const-string v4, "set_recording_hint_ff"

    iget-boolean v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->frontFacingRecordingHint:Z

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "set_recording_hint_bf"

    const-string v4, "set_recording_hint_bf"

    iget-boolean v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->backFacingRecordingHint:Z

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "frameRate"

    const-string v4, "frameRate"

    iget v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetFrameRate:I

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "targetSize"

    const-string v4, "targetSize"

    iget v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetSize:I

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "previewWidth"

    const-string v4, "previewWidth"

    iget v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewWidth:I

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "previewHeight"

    const-string v4, "previewHeight"

    iget v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewHeight:I

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "bufferSize"

    const-string v4, "bufferSize"

    iget v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->bufferCount:I

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "maxDuration"

    const-string v4, "maxDuration"

    iget v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->maxDuration:I

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pre_ratio"

    const-string v4, "pre_ratio"

    iget-wide v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->preAllocRatio:D

    invoke-virtual {p1, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v2, "aspect_ratio_or_ff"

    const-string v4, "aspect_ratio_or_ff"

    iget v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->frontFacingAspectRatioOverride:F

    float-to-double v5, v5

    invoke-virtual {p1, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v2, "aspect_ratio_or_bf"

    const-string v4, "aspect_ratio_or_bf"

    iget v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->backFacingAspectRatioOverride:F

    float-to-double v5, v5

    invoke-virtual {p1, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v2, "updateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v2, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    invoke-direct {v2, p0}, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;-><init>(Landroid/content/Context;)V
    :try_end_10b
    .catchall {:try_start_3 .. :try_end_10b} :catchall_10d

    monitor-exit v3

    return-object v2

    :catchall_10d
    move-exception v2

    monitor-exit v3

    throw v2
.end method
