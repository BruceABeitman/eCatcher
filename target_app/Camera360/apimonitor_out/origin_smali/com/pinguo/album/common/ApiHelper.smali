.class public Lcom/pinguo/album/common/ApiHelper;
.super Ljava/lang/Object;
.source "ApiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/album/common/ApiHelper$VERSION_CODES;
    }
.end annotation


# static fields
.field public static final AT_LEAST_11:Z

.field public static final AT_LEAST_16:Z

.field public static final CAN_START_PREVIEW_IN_JPEG_CALLBACK:Z

.field public static final ENABLE_PHOTO_EDITOR:Z

.field public static final HAS_ACTION_BAR:Z

.field public static final HAS_ANNOUNCE_FOR_ACCESSIBILITY:Z

.field public static final HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

.field public static final HAS_CAMERA_FOCUS_AREA:Z

.field public static final HAS_CAMERA_HDR:Z

.field public static final HAS_CAMERA_METERING_AREA:Z

.field public static final HAS_CANCELLATION_SIGNAL:Z

.field public static final HAS_DISPLAY_LISTENER:Z

.field public static final HAS_EFFECTS_RECORDING:Z

.field public static final HAS_EFFECTS_RECORDING_CONTEXT_INPUT:Z

.field public static final HAS_FACE_DETECTION:Z

.field public static final HAS_GET_CAMERA_DISABLED:Z

.field public static final HAS_GET_SUPPORTED_VIDEO_SIZE:Z

.field public static final HAS_GLES20_REQUIRED:Z

.field public static final HAS_INTENT_EXTRA_LOCAL_ONLY:Z

.field public static final HAS_MEDIA_ACTION_SOUND:Z

.field public static final HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

.field public static final HAS_MEDIA_MUXER:Z

.field public static final HAS_MEDIA_PROVIDER_FILES_TABLE:Z

.field public static final HAS_MOTION_EVENT_TRANSFORM:Z

.field public static final HAS_MTP:Z

.field public static final HAS_OBJECT_ANIMATION:Z

.field public static final HAS_OPTIONS_IN_MUTABLE:Z

.field public static final HAS_ORIENTATION_LOCK:Z

.field public static final HAS_POST_ON_ANIMATION:Z

.field public static final HAS_RELEASE_SURFACE_TEXTURE:Z

.field public static final HAS_REMOTE_VIEWS_SERVICE:Z

.field public static final HAS_REUSING_BITMAP_IN_BITMAP_FACTORY:Z

.field public static final HAS_REUSING_BITMAP_IN_BITMAP_REGION_DECODER:Z

.field public static final HAS_ROTATION_ANIMATION:Z

.field public static final HAS_SET_BEAM_PUSH_URIS:Z

.field public static final HAS_SET_DEFALT_BUFFER_SIZE:Z

.field public static final HAS_SET_ICON_ATTRIBUTE:Z

.field public static final HAS_SET_SYSTEM_UI_VISIBILITY:Z

.field public static final HAS_SURFACE_TEXTURE:Z

.field public static final HAS_SURFACE_TEXTURE_RECORDING:Z

.field public static final HAS_TIME_LAPSE_RECORDING:Z

.field public static final HAS_VIEW_PROPERTY_ANIMATOR:Z

.field public static final HAS_VIEW_SYSTEM_UI_FLAG_HIDE_NAVIGATION:Z

.field public static final HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

.field public static final HAS_VIEW_TRANSFORM_PROPERTIES:Z

.field public static final HAS_ZOOM_WHEN_RECORDING:Z

.field public static final USE_888_PIXEL_FORMAT:Z


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const/16 v10, 0xe

    const/16 v9, 0x10

    const/16 v8, 0xb

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_1d2

    move v2, v3

    :goto_d
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->AT_LEAST_11:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v9, :cond_1d5

    move v2, v3

    :goto_14
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->AT_LEAST_16:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v9, :cond_1d8

    move v2, v3

    :goto_1b
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->USE_888_PIXEL_FORMAT:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v10, :cond_1db

    move v2, v3

    :goto_22
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->ENABLE_PHOTO_EDITOR:Z

    const-class v2, Landroid/view/View;

    const-string/jumbo v5, "SYSTEM_UI_FLAG_LAYOUT_STABLE"

    invoke-static {v2, v5}, Lcom/pinguo/album/common/ApiHelper;->hasField(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

    const-class v2, Landroid/view/View;

    const-string/jumbo v5, "SYSTEM_UI_FLAG_HIDE_NAVIGATION"

    invoke-static {v2, v5}, Lcom/pinguo/album/common/ApiHelper;->hasField(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_HIDE_NAVIGATION:Z

    const-class v2, Landroid/provider/MediaStore$MediaColumns;

    const-string/jumbo v5, "WIDTH"

    invoke-static {v2, v5}, Lcom/pinguo/album/common/ApiHelper;->hasField(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v9, :cond_1de

    move v2, v3

    :goto_4a
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_REGION_DECODER:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_1e1

    move v2, v3

    :goto_51
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_FACTORY:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v9, :cond_1e4

    move v2, v3

    :goto_58
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_SET_BEAM_PUSH_URIS:Z

    const-string/jumbo v2, "android.graphics.SurfaceTexture"

    const-string/jumbo v5, "setDefaultBufferSize"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-static {v2, v5, v6}, Lcom/pinguo/album/common/ApiHelper;->hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_SET_DEFALT_BUFFER_SIZE:Z

    const-string/jumbo v2, "android.graphics.SurfaceTexture"

    const-string/jumbo v5, "release"

    new-array v6, v4, [Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Lcom/pinguo/album/common/ApiHelper;->hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_RELEASE_SURFACE_TEXTURE:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_1e7

    move v2, v3

    :goto_84
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xc

    if-lt v2, v5, :cond_1ea

    move v2, v3

    :goto_8d
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_MTP:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v9, :cond_1ed

    move v2, v3

    :goto_94
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_1f0

    move v2, v3

    :goto_9b
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_REMOTE_VIEWS_SERVICE:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_1f3

    move v2, v3

    :goto_a2
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_INTENT_EXTRA_LOCAL_ONLY:Z

    const-class v2, Landroid/view/View;

    const-string/jumbo v5, "setSystemUiVisibility"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-static {v2, v5, v6}, Lcom/pinguo/album/common/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_SET_SYSTEM_UI_VISIBILITY:Z

    const/4 v0, 0x0

    :try_start_b6
    const-string/jumbo v2, "android.hardware.Camera$FaceDetectionListener"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/hardware/Camera;

    const-string/jumbo v5, "setFaceDetectionListener"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v2, v5, v6}, Lcom/pinguo/album/common/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1f6

    const-class v2, Landroid/hardware/Camera;

    const-string/jumbo v5, "startFaceDetection"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Lcom/pinguo/album/common/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1f6

    const-class v2, Landroid/hardware/Camera;

    const-string/jumbo v5, "stopFaceDetection"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Lcom/pinguo/album/common/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1f6

    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string/jumbo v5, "getMaxNumDetectedFaces"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Lcom/pinguo/album/common/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
    :try_end_f5
    .catch Ljava/lang/Throwable; {:try_start_b6 .. :try_end_f5} :catch_241

    move-result v2

    if-eqz v2, :cond_1f6

    move v0, v3

    :goto_f9
    sput-boolean v0, Lcom/pinguo/album/common/ApiHelper;->HAS_FACE_DETECTION:Z

    const-class v2, Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo v5, "getCameraDisabled"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/content/ComponentName;

    aput-object v7, v6, v4

    invoke-static {v2, v5, v6}, Lcom/pinguo/album/common/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_GET_CAMERA_DISABLED:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v9, :cond_1f9

    move v2, v3

    :goto_111
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_MEDIA_ACTION_SOUND:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_1fc

    move v2, v3

    :goto_118
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_TIME_LAPSE_RECORDING:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v10, :cond_1ff

    move v2, v3

    :goto_11f
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_ZOOM_WHEN_RECORDING:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v10, :cond_202

    move v2, v3

    :goto_126
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_CAMERA_FOCUS_AREA:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v10, :cond_205

    move v2, v3

    :goto_12d
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_CAMERA_METERING_AREA:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_208

    move v2, v3

    :goto_134
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_MOTION_EVENT_TRANSFORM:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v2, v5, :cond_20b

    move v2, v3

    :goto_13d
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_EFFECTS_RECORDING_CONTEXT_INPUT:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_20e

    move v2, v3

    :goto_144
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_GET_SUPPORTED_VIDEO_SIZE:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_211

    move v2, v3

    :goto_14b
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_SET_ICON_ATTRIBUTE:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_214

    move v2, v3

    :goto_152
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_MEDIA_PROVIDER_FILES_TABLE:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v9, :cond_217

    move v2, v3

    :goto_159
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_21a

    move v2, v3

    :goto_160
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_ACTION_BAR:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_21d

    move v2, v3

    :goto_167
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v2, v5, :cond_220

    move v2, v3

    :goto_170
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_CAMERA_HDR:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_223

    move v2, v3

    :goto_177
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_OPTIONS_IN_MUTABLE:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v10, :cond_226

    move v2, v3

    :goto_17e
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->CAN_START_PREVIEW_IN_JPEG_CALLBACK:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xc

    if-lt v2, v5, :cond_229

    move v2, v3

    :goto_187
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_VIEW_PROPERTY_ANIMATOR:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v9, :cond_22c

    move v2, v3

    :goto_18e
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_POST_ON_ANIMATION:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v9, :cond_22f

    move v2, v3

    :goto_195
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_ANNOUNCE_FOR_ACCESSIBILITY:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_232

    move v2, v3

    :goto_19c
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_OBJECT_ANIMATION:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_235

    move v2, v3

    :goto_1a3
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_GLES20_REQUIRED:Z

    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v5, "rotationAnimation"

    invoke-static {v2, v5}, Lcom/pinguo/album/common/ApiHelper;->hasField(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_ROTATION_ANIMATION:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v2, v5, :cond_238

    move v2, v3

    :goto_1b7
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_ORIENTATION_LOCK:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v9, :cond_23b

    move v2, v3

    :goto_1be
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_CANCELLATION_SIGNAL:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v2, v5, :cond_23d

    move v2, v3

    :goto_1c7
    sput-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_MEDIA_MUXER:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v2, v5, :cond_23f

    :goto_1cf
    sput-boolean v3, Lcom/pinguo/album/common/ApiHelper;->HAS_DISPLAY_LISTENER:Z

    return-void

    :cond_1d2
    move v2, v4

    goto/16 :goto_d

    :cond_1d5
    move v2, v4

    goto/16 :goto_14

    :cond_1d8
    move v2, v4

    goto/16 :goto_1b

    :cond_1db
    move v2, v4

    goto/16 :goto_22

    :cond_1de
    move v2, v4

    goto/16 :goto_4a

    :cond_1e1
    move v2, v4

    goto/16 :goto_51

    :cond_1e4
    move v2, v4

    goto/16 :goto_58

    :cond_1e7
    move v2, v4

    goto/16 :goto_84

    :cond_1ea
    move v2, v4

    goto/16 :goto_8d

    :cond_1ed
    move v2, v4

    goto/16 :goto_94

    :cond_1f0
    move v2, v4

    goto/16 :goto_9b

    :cond_1f3
    move v2, v4

    goto/16 :goto_a2

    :cond_1f6
    move v0, v4

    goto/16 :goto_f9

    :cond_1f9
    move v2, v4

    goto/16 :goto_111

    :cond_1fc
    move v2, v4

    goto/16 :goto_118

    :cond_1ff
    move v2, v4

    goto/16 :goto_11f

    :cond_202
    move v2, v4

    goto/16 :goto_126

    :cond_205
    move v2, v4

    goto/16 :goto_12d

    :cond_208
    move v2, v4

    goto/16 :goto_134

    :cond_20b
    move v2, v4

    goto/16 :goto_13d

    :cond_20e
    move v2, v4

    goto/16 :goto_144

    :cond_211
    move v2, v4

    goto/16 :goto_14b

    :cond_214
    move v2, v4

    goto/16 :goto_152

    :cond_217
    move v2, v4

    goto/16 :goto_159

    :cond_21a
    move v2, v4

    goto/16 :goto_160

    :cond_21d
    move v2, v4

    goto/16 :goto_167

    :cond_220
    move v2, v4

    goto/16 :goto_170

    :cond_223
    move v2, v4

    goto/16 :goto_177

    :cond_226
    move v2, v4

    goto/16 :goto_17e

    :cond_229
    move v2, v4

    goto/16 :goto_187

    :cond_22c
    move v2, v4

    goto/16 :goto_18e

    :cond_22f
    move v2, v4

    goto/16 :goto_195

    :cond_232
    move v2, v4

    goto/16 :goto_19c

    :cond_235
    move v2, v4

    goto/16 :goto_1a3

    :cond_238
    move v2, v4

    goto/16 :goto_1b7

    :cond_23b
    move v2, v4

    goto :goto_1be

    :cond_23d
    move v2, v4

    goto :goto_1c7

    :cond_23f
    move v3, v4

    goto :goto_1cf

    :catch_241
    move-exception v2

    goto/16 :goto_f9
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;I)I"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result p3

    :goto_8
    return p3

    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method private static hasField(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 v1, 0x1

    :goto_4
    return v1

    :catch_5
    move-exception v0

    const/4 v1, 0x0

    goto :goto_4
.end method

.method private static varargs hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 v1, 0x1

    :goto_4
    return v1

    :catch_5
    move-exception v0

    const/4 v1, 0x0

    goto :goto_4
.end method

.method private static varargs hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    const/4 v2, 0x1

    :goto_8
    return v2

    :catch_9
    move-exception v1

    const/4 v2, 0x0

    goto :goto_8
.end method
