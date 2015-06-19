.class public Lco/vine/android/recorder/PictureConverter;
.super Ljava/lang/Object;
.source "PictureConverter.java"
.field public final LOCK:[I
.field private lastH:I
.field private lastW:I
.field private mFilterYuv:Lco/vine/android/recorder/RsYuv;
.field private mLastDegree:I
.field private mLastFront:Z
.field private mLastMirrored:Z
.field private final mMatrix:Landroid/graphics/Matrix;
.field private final mPaint:Landroid/graphics/Paint;
.field private mRS:Landroid/support/v8/renderscript/RenderScript;
.field private mScaleStep:Lco/vine/android/recorder/PictureConverter$ScaleStep;
.field private final mTargetSize:I
.field private srcBmp:Landroid/graphics/Bitmap;
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;ILco/vine/android/recorder/CameraSetting;)V
.registers 7
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const v1, -0x1869f
iput v1, p0, Lco/vine/android/recorder/PictureConverter;->mLastDegree:I
new-array v1, v2, [I
iput-object v1, p0, Lco/vine/android/recorder/PictureConverter;->LOCK:[I
iput-boolean v2, p0, Lco/vine/android/recorder/PictureConverter;->mLastMirrored:Z
iput-object p1, p0, Lco/vine/android/recorder/PictureConverter;->mRS:Landroid/support/v8/renderscript/RenderScript;
new-instance v1, Landroid/graphics/Matrix;
invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V
iput-object v1, p0, Lco/vine/android/recorder/PictureConverter;->mMatrix:Landroid/graphics/Matrix;
iput p2, p0, Lco/vine/android/recorder/PictureConverter;->mTargetSize:I
new-instance v1, Landroid/graphics/Paint;
invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V
iput-object v1, p0, Lco/vine/android/recorder/PictureConverter;->mPaint:Landroid/graphics/Paint;
:try_start_21
invoke-direct {p0, p3}, Lco/vine/android/recorder/PictureConverter;->setCameraSetting(Lco/vine/android/recorder/CameraSetting;)V
:try_end_24
.catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_25
return-void
:catch_25
move-exception v0
new-instance v1, Lco/vine/android/VineNotSupportedException;
invoke-direct {v1}, Lco/vine/android/VineNotSupportedException;-><init>()V
throw v1
.end method
.method static synthetic access$000(Lco/vine/android/recorder/PictureConverter;)I
.registers 2
iget v0, p0, Lco/vine/android/recorder/PictureConverter;->lastH:I
return v0
.end method
.method static synthetic access$100(Lco/vine/android/recorder/PictureConverter;)I
.registers 2
iget v0, p0, Lco/vine/android/recorder/PictureConverter;->lastW:I
return v0
.end method
.method static synthetic access$200(Lco/vine/android/recorder/PictureConverter;)Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/PictureConverter;->srcBmp:Landroid/graphics/Bitmap;
return-object v0
.end method
.method static synthetic access$300(Lco/vine/android/recorder/PictureConverter;)Landroid/graphics/Paint;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/PictureConverter;->mPaint:Landroid/graphics/Paint;
return-object v0
.end method
.method private allocate(III)V
.registers 6
new-instance v0, Lco/vine/android/recorder/RsYuv;
iget-object v1, p0, Lco/vine/android/recorder/PictureConverter;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-direct {v0, v1, p2, p3}, Lco/vine/android/recorder/RsYuv;-><init>(Landroid/support/v8/renderscript/RenderScript;II)V
iput-object v0, p0, Lco/vine/android/recorder/PictureConverter;->mFilterYuv:Lco/vine/android/recorder/RsYuv;
return-void
.end method
.method private convertUsingRenderScript(Lco/vine/android/recorder/CameraSetting;Lco/vine/android/recorder/VideoData;Z)V
.registers 9
iget-object v1, p2, Lco/vine/android/recorder/VideoData;->data:[B
if-nez v1, :cond_9
const-string v1, "Data is null."
invoke-static {v1}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
:cond_9
iget-object v1, p0, Lco/vine/android/recorder/PictureConverter;->mRS:Landroid/support/v8/renderscript/RenderScript;
if-eqz v1, :cond_20
iget-object v1, p0, Lco/vine/android/recorder/PictureConverter;->mFilterYuv:Lco/vine/android/recorder/RsYuv;
if-eqz v1, :cond_13
if-eqz p3, :cond_20
:cond_13
:try_start_13
new-instance v1, Lco/vine/android/recorder/RsYuv;
iget-object v2, p0, Lco/vine/android/recorder/PictureConverter;->mRS:Landroid/support/v8/renderscript/RenderScript;
iget v3, p1, Lco/vine/android/recorder/CameraSetting;->originalW:I
iget v4, p1, Lco/vine/android/recorder/CameraSetting;->originalH:I
invoke-direct {v1, v2, v3, v4}, Lco/vine/android/recorder/RsYuv;-><init>(Landroid/support/v8/renderscript/RenderScript;II)V
iput-object v1, p0, Lco/vine/android/recorder/PictureConverter;->mFilterYuv:Lco/vine/android/recorder/RsYuv;
:goto_20
:cond_20
:try_end_20
.catch Lco/vine/android/VineNotSupportedException; {:try_start_13 .. :try_end_20} :catch_2a
iget-object v1, p0, Lco/vine/android/recorder/PictureConverter;->mFilterYuv:Lco/vine/android/recorder/RsYuv;
iget-object v2, p2, Lco/vine/android/recorder/VideoData;->data:[B
iget-object v3, p0, Lco/vine/android/recorder/PictureConverter;->srcBmp:Landroid/graphics/Bitmap;
invoke-virtual {v1, v2, v3}, Lco/vine/android/recorder/RsYuv;->execute([BLandroid/graphics/Bitmap;)V
return-void
:catch_2a
move-exception v0
const-string v1, "Failed to RsYuv, it should never reach here."
invoke-static {v1}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
goto :goto_20
.end method
.method private giveMatrixNewValuesWithScaleIfDegreeHasChanged(IZ)V
.registers 14
const/high16 v10, 0x4000
iget v7, p0, Lco/vine/android/recorder/PictureConverter;->mLastDegree:I
if-ne v7, p1, :cond_a
iget-boolean v7, p0, Lco/vine/android/recorder/PictureConverter;->mLastMirrored:Z
if-eq v7, p2, :cond_6a
:cond_a
iget-object v7, p0, Lco/vine/android/recorder/PictureConverter;->mScaleStep:Lco/vine/android/recorder/PictureConverter$ScaleStep;
if-nez v7, :cond_6b
iget v6, p0, Lco/vine/android/recorder/PictureConverter;->lastW:I
:goto_10
iget-object v7, p0, Lco/vine/android/recorder/PictureConverter;->mScaleStep:Lco/vine/android/recorder/PictureConverter$ScaleStep;
if-nez v7, :cond_72
iget v2, p0, Lco/vine/android/recorder/PictureConverter;->lastH:I
:goto_16
iget-object v7, p0, Lco/vine/android/recorder/PictureConverter;->mMatrix:Landroid/graphics/Matrix;
invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V
iget v7, p0, Lco/vine/android/recorder/PictureConverter;->mTargetSize:I
int-to-float v7, v7
int-to-float v8, v6
div-float/2addr v7, v8
iget v8, p0, Lco/vine/android/recorder/PictureConverter;->mTargetSize:I
int-to-float v8, v8
int-to-float v9, v2
div-float/2addr v8, v9
invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F
move-result v5
int-to-float v7, v6
mul-float v1, v7, v5
int-to-float v7, v2
mul-float v0, v7, v5
iget v7, p0, Lco/vine/android/recorder/PictureConverter;->mTargetSize:I
int-to-float v7, v7
sub-float v7, v1, v7
neg-float v7, v7
div-float v3, v7, v10
iget v7, p0, Lco/vine/android/recorder/PictureConverter;->mTargetSize:I
int-to-float v7, v7
sub-float v7, v0, v7
neg-float v7, v7
div-float v4, v7, v10
iget-object v7, p0, Lco/vine/android/recorder/PictureConverter;->mMatrix:Landroid/graphics/Matrix;
int-to-float v8, p1
div-int/lit8 v9, v6, 0x2
int-to-float v9, v9
div-int/lit8 v10, v2, 0x2
int-to-float v10, v10
invoke-virtual {v7, v8, v9, v10}, Landroid/graphics/Matrix;->postRotate(FFF)Z
const-string v7, "Creating with mirrored {}."
invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v8
invoke-static {v7, v8}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
if-eqz p2, :cond_79
iget-object v7, p0, Lco/vine/android/recorder/PictureConverter;->mMatrix:Landroid/graphics/Matrix;
neg-float v8, v5
invoke-virtual {v7, v8, v5}, Landroid/graphics/Matrix;->postScale(FF)Z
iget-object v7, p0, Lco/vine/android/recorder/PictureConverter;->mMatrix:Landroid/graphics/Matrix;
neg-float v8, v3
iget v9, p0, Lco/vine/android/recorder/PictureConverter;->mTargetSize:I
int-to-float v9, v9
add-float/2addr v8, v9
invoke-virtual {v7, v8, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z
:goto_66
iput-boolean p2, p0, Lco/vine/android/recorder/PictureConverter;->mLastMirrored:Z
iput p1, p0, Lco/vine/android/recorder/PictureConverter;->mLastDegree:I
:cond_6a
return-void
:cond_6b
iget-object v7, p0, Lco/vine/android/recorder/PictureConverter;->mScaleStep:Lco/vine/android/recorder/PictureConverter$ScaleStep;
#getter for: Lco/vine/android/recorder/PictureConverter$ScaleStep;->scaledW:I
invoke-static {v7}, Lco/vine/android/recorder/PictureConverter$ScaleStep;->access$700(Lco/vine/android/recorder/PictureConverter$ScaleStep;)I
move-result v6
goto :goto_10
:cond_72
iget-object v7, p0, Lco/vine/android/recorder/PictureConverter;->mScaleStep:Lco/vine/android/recorder/PictureConverter$ScaleStep;
#getter for: Lco/vine/android/recorder/PictureConverter$ScaleStep;->scaledH:I
invoke-static {v7}, Lco/vine/android/recorder/PictureConverter$ScaleStep;->access$800(Lco/vine/android/recorder/PictureConverter$ScaleStep;)I
move-result v2
goto :goto_16
:cond_79
iget-object v7, p0, Lco/vine/android/recorder/PictureConverter;->mMatrix:Landroid/graphics/Matrix;
invoke-virtual {v7, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z
iget-object v7, p0, Lco/vine/android/recorder/PictureConverter;->mMatrix:Landroid/graphics/Matrix;
invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z
goto :goto_66
.end method
.method private setCameraSetting(Lco/vine/android/recorder/CameraSetting;)V
.registers 8
const/4 v5, 0x0
const/4 v4, 0x0
iget-object v1, p0, Lco/vine/android/recorder/PictureConverter;->srcBmp:Landroid/graphics/Bitmap;
if-eqz v1, :cond_d
iget-object v1, p0, Lco/vine/android/recorder/PictureConverter;->srcBmp:Landroid/graphics/Bitmap;
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
iput-object v4, p0, Lco/vine/android/recorder/PictureConverter;->srcBmp:Landroid/graphics/Bitmap;
:cond_d
iget v1, p1, Lco/vine/android/recorder/CameraSetting;->originalW:I
iget v2, p1, Lco/vine/android/recorder/CameraSetting;->originalH:I
sget-object v3, Lco/vine/android/recorder/RecordConfigUtils;->DEFAULT_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;
invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v1
iput-object v1, p0, Lco/vine/android/recorder/PictureConverter;->srcBmp:Landroid/graphics/Bitmap;
iget v1, p1, Lco/vine/android/recorder/CameraSetting;->originalW:I
iget v2, p1, Lco/vine/android/recorder/CameraSetting;->originalH:I
mul-int v0, v1, v2
iget v1, p1, Lco/vine/android/recorder/CameraSetting;->originalH:I
iput v1, p0, Lco/vine/android/recorder/PictureConverter;->lastH:I
iget v1, p1, Lco/vine/android/recorder/CameraSetting;->originalW:I
iput v1, p0, Lco/vine/android/recorder/PictureConverter;->lastW:I
iget-boolean v1, p1, Lco/vine/android/recorder/CameraSetting;->frontFacing:Z
iput-boolean v1, p0, Lco/vine/android/recorder/PictureConverter;->mLastFront:Z
iget-boolean v1, p1, Lco/vine/android/recorder/CameraSetting;->frontFacing:Z
if-eqz v1, :cond_4c
iget v1, p1, Lco/vine/android/recorder/CameraSetting;->frontFacingAspectRatio:F
cmpl-float v1, v1, v5
if-lez v1, :cond_4c
new-instance v1, Lco/vine/android/recorder/PictureConverter$ScaleStep;
iget v2, p1, Lco/vine/android/recorder/CameraSetting;->frontFacingAspectRatio:F
invoke-direct {v1, p0, v2, v4}, Lco/vine/android/recorder/PictureConverter$ScaleStep;-><init>(Lco/vine/android/recorder/PictureConverter;FLco/vine/android/recorder/PictureConverter$1;)V
iput-object v1, p0, Lco/vine/android/recorder/PictureConverter;->mScaleStep:Lco/vine/android/recorder/PictureConverter$ScaleStep;
:goto_3e
iget v1, p1, Lco/vine/android/recorder/CameraSetting;->degrees:I
const/4 v2, 0x0
invoke-direct {p0, v1, v2}, Lco/vine/android/recorder/PictureConverter;->giveMatrixNewValuesWithScaleIfDegreeHasChanged(IZ)V
iget v1, p1, Lco/vine/android/recorder/CameraSetting;->originalW:I
iget v2, p1, Lco/vine/android/recorder/CameraSetting;->originalH:I
invoke-direct {p0, v0, v1, v2}, Lco/vine/android/recorder/PictureConverter;->allocate(III)V
return-void
:cond_4c
iget v1, p1, Lco/vine/android/recorder/CameraSetting;->backFacingAspectRatio:F
cmpl-float v1, v1, v5
if-lez v1, :cond_5c
new-instance v1, Lco/vine/android/recorder/PictureConverter$ScaleStep;
iget v2, p1, Lco/vine/android/recorder/CameraSetting;->backFacingAspectRatio:F
invoke-direct {v1, p0, v2, v4}, Lco/vine/android/recorder/PictureConverter$ScaleStep;-><init>(Lco/vine/android/recorder/PictureConverter;FLco/vine/android/recorder/PictureConverter$1;)V
iput-object v1, p0, Lco/vine/android/recorder/PictureConverter;->mScaleStep:Lco/vine/android/recorder/PictureConverter$ScaleStep;
goto :goto_3e
:cond_5c
iput-object v4, p0, Lco/vine/android/recorder/PictureConverter;->mScaleStep:Lco/vine/android/recorder/PictureConverter$ScaleStep;
goto :goto_3e
.end method
.method public convert(Lco/vine/android/recorder/CameraSetting;Lco/vine/android/recorder/VideoData;Z)Z
.registers 6
const/4 v1, 0x0
:try_start_1
invoke-direct {p0, p1, p2, p3}, Lco/vine/android/recorder/PictureConverter;->convertUsingRenderScript(Lco/vine/android/recorder/CameraSetting;Lco/vine/android/recorder/VideoData;Z)V
:try_end_4
.catch Landroid/renderscript/RSInvalidStateException; {:try_start_1 .. :try_end_4} :catch_6
.catch Landroid/support/v8/renderscript/RSInvalidStateException; {:try_start_1 .. :try_end_4} :catch_8
const/4 v1, 0x1
:goto_5
return v1
:catch_6
move-exception v0
goto :goto_5
:catch_8
move-exception v0
goto :goto_5
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 5
iget-object v0, p0, Lco/vine/android/recorder/PictureConverter;->mScaleStep:Lco/vine/android/recorder/PictureConverter$ScaleStep;
if-nez v0, :cond_e
iget-object v0, p0, Lco/vine/android/recorder/PictureConverter;->srcBmp:Landroid/graphics/Bitmap;
iget-object v1, p0, Lco/vine/android/recorder/PictureConverter;->mMatrix:Landroid/graphics/Matrix;
iget-object v2, p0, Lco/vine/android/recorder/PictureConverter;->mPaint:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
:goto_d
return-void
:cond_e
iget-object v0, p0, Lco/vine/android/recorder/PictureConverter;->mScaleStep:Lco/vine/android/recorder/PictureConverter$ScaleStep;
#calls: Lco/vine/android/recorder/PictureConverter$ScaleStep;->scale()V
invoke-static {v0}, Lco/vine/android/recorder/PictureConverter$ScaleStep;->access$400(Lco/vine/android/recorder/PictureConverter$ScaleStep;)V
iget-object v0, p0, Lco/vine/android/recorder/PictureConverter;->mScaleStep:Lco/vine/android/recorder/PictureConverter$ScaleStep;
#getter for: Lco/vine/android/recorder/PictureConverter$ScaleStep;->mPreScaleBitmap:Landroid/graphics/Bitmap;
invoke-static {v0}, Lco/vine/android/recorder/PictureConverter$ScaleStep;->access$500(Lco/vine/android/recorder/PictureConverter$ScaleStep;)Landroid/graphics/Bitmap;
move-result-object v0
iget-object v1, p0, Lco/vine/android/recorder/PictureConverter;->mMatrix:Landroid/graphics/Matrix;
iget-object v2, p0, Lco/vine/android/recorder/PictureConverter;->mPaint:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
goto :goto_d
.end method
.method public drawGeneric(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
.registers 5
iget-object v0, p0, Lco/vine/android/recorder/PictureConverter;->mPaint:Landroid/graphics/Paint;
invoke-virtual {p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
return-void
.end method
.method public giveMatrixNewValuesWithScaleIfDegreeHasChangedWithKnownConfigs(IZ)V
.registers 3
invoke-direct {p0, p1, p2}, Lco/vine/android/recorder/PictureConverter;->giveMatrixNewValuesWithScaleIfDegreeHasChanged(IZ)V
return-void
.end method
.method public updateSettingsIfNeeded(Lco/vine/android/recorder/CameraSetting;)Z
.registers 6
iget v2, p0, Lco/vine/android/recorder/PictureConverter;->lastW:I
iget v3, p1, Lco/vine/android/recorder/CameraSetting;->originalW:I
if-ne v2, v3, :cond_12
iget v2, p0, Lco/vine/android/recorder/PictureConverter;->lastH:I
iget v3, p1, Lco/vine/android/recorder/CameraSetting;->originalH:I
if-ne v2, v3, :cond_12
iget-boolean v2, p1, Lco/vine/android/recorder/CameraSetting;->frontFacing:Z
iget-boolean v3, p0, Lco/vine/android/recorder/PictureConverter;->mLastFront:Z
if-eq v2, v3, :cond_1d
:cond_12
const/4 v1, 0x1
:goto_13
iget-object v2, p0, Lco/vine/android/recorder/PictureConverter;->srcBmp:Landroid/graphics/Bitmap;
if-eqz v2, :cond_19
if-eqz v1, :cond_1c
:cond_19
:try_start_19
invoke-direct {p0, p1}, Lco/vine/android/recorder/PictureConverter;->setCameraSetting(Lco/vine/android/recorder/CameraSetting;)V
:goto_1c
:cond_1c
:try_end_1c
.catch Lco/vine/android/VineNotSupportedException; {:try_start_19 .. :try_end_1c} :catch_1f
return v1
:cond_1d
const/4 v1, 0x0
goto :goto_13
:catch_1f
move-exception v0
const-string v2, "Failed to make RsYuv, it should never reach here."
invoke-static {v2}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
goto :goto_1c
.end method