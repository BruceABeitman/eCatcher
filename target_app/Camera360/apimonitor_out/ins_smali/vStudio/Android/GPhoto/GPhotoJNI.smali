.class public LvStudio/Android/GPhoto/GPhotoJNI;
.super Ljava/lang/Object;
.source "GPhotoJNI.java"
.field public static final DATE_WATERMARK_ALIGN_CENTER:I = 0x0
.field public static final DATE_WATERMARK_ALIGN_LEFT:I = -0x1
.field public static final DATE_WATERMARK_ALIGN_RIGHT:I = 0x1
.field private static final LIBRARY_NAME:Ljava/lang/String; = "gphoto"
.field private static final TAG:Ljava/lang/String; = null
.field public static final TYPE_EFFECT:I = 0x0
.field public static final TYPE_THUMB:I = 0x1
.field private mPreviewHeight:I
.field private mPreviewWidth:I
.field private mThumbHeight:I
.field private mThumbWidth:I
.field private quality:I
.method static constructor <clinit>()V
.registers 1
const-class v0, LvStudio/Android/GPhoto/GPhotoJNI;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, LvStudio/Android/GPhoto/GPhotoJNI;->TAG:Ljava/lang/String;
const-string/jumbo v0, "gphoto"
invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, LvStudio/Android/GPhoto/GPhotoJNI;->mPreviewWidth:I
iput v0, p0, LvStudio/Android/GPhoto/GPhotoJNI;->mPreviewHeight:I
iput v0, p0, LvStudio/Android/GPhoto/GPhotoJNI;->mThumbWidth:I
iput v0, p0, LvStudio/Android/GPhoto/GPhotoJNI;->mThumbHeight:I
iput v0, p0, LvStudio/Android/GPhoto/GPhotoJNI;->quality:I
const/4 v0, 0x0
invoke-direct {p0, v0}, LvStudio/Android/GPhoto/GPhotoJNI;->SetJniBitmapUseBGRA(Z)V
return-void
.end method
.method private native BeginProcessPrevImage([BIIIIIIF)Z
.end method
.method private native GetPrevImageHeight()I
.end method
.method private native GetPrevImageWidth()I
.end method
.method private native SetJniBitmapUseBGRA(Z)V
.end method
.method public native AnalyseLightFromJpegFile([BII)I
.end method
.method public native AnalyseLightFromYUV([BIII)I
.end method
.method public native BeginProcessPrevImageFromFile(Ljava/lang/String;III)Z
.end method
.method public native BeginProcessPrevImageFromOrgPrevImg([BIII)Z
.end method
.method public native BeginProcessPrevImageFromOrgPrevImgFile(Ljava/lang/String;I)Z
.end method
.method public native ClearEffectTempData()V
.end method
.method public native DeBackground(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z
.end method
.method public native DecodeJpeg([BI)[B
.end method
.method public native EndProcessPrevImage()V
.end method
.method public native FreeSceneData()V
.end method
.method public native GetOrgPrevImage()[I
.end method
.method public native GetOrgPrevImageEX(Landroid/graphics/Bitmap;)Z
.end method
.method public native GetScenePrevTemplateHeight()I
.end method
.method public native GetScenePrevTemplateWidth()I
.end method
.method public native GetSceneTemplateHeight()I
.end method
.method public native GetSceneTemplateWidth()I
.end method
.method public native LoadBitmapFromJpgFile(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
.end method
.method public MakeEffectImageEX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)Z
.registers 16
const/4 v7, 0x0
const/4 v8, 0x1
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move v5, p5
move v6, p6
invoke-virtual/range {v0 .. v8}, LvStudio/Android/GPhoto/GPhotoJNI;->MakeEffectImageEX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BIIII)Z
move-result v0
return v0
.end method
.method public native MakeEffectImageEX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BIIII)Z
.end method
.method public native MakeEffectImageProject(Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[BI)Z
.end method
.method public native MakeEffectImageStep1([BI)I
.end method
.method public native MakeEffectImageStep2(IILjava/lang/String;[BI)Z
.end method
.method public native MakeEffectThumImage([BIILjava/lang/String;)[I
.end method
.method public native MakeEffectThumImageFromJpeg([BIIILjava/lang/String;)[I
.end method
.method public native MakeSceneImage([BIIILjava/lang/String;Ljava/lang/String;)[I
.end method
.method public native MakeScenePrevImage([I[BIILjava/lang/String;)Z
.end method
.method public native ProcessPrevImage(Ljava/lang/String;I)[I
.end method
.method public native ProcessPrevImageEX(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z
.end method
.method public native RunProject(Ljava/lang/String;I)Ljava/lang/String;
.end method
.method public native SaveBitmapToJpgFile(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z
.end method
.method public native SaveJpegWithExif(Ljava/lang/String;[BI[BI)Z
.end method
.method public native ScaleImageFile(Ljava/lang/String;Ljava/lang/String;IIII)Z
.end method
.method public native SetDateBitmap(Landroid/graphics/Bitmap;I)V
.end method
.method public native SetParams(IZZII)Z
.end method
.method public native SetSceneTemplateData(Ljava/lang/String;I)Z
.end method
.method public native WriteExifToJpeg(Ljava/lang/String;[BI)Z
.end method
.method public native WriteJpegExifInfo(Ljava/lang/String;[BI)Z
.end method
.method public beginProcessPreview(Ljava/lang/String;III)Z
.registers 9
sget-object v1, LvStudio/Android/GPhoto/GPhotoJNI;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "beginProcessPreview: size = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " x "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " thumb size = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " x "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ", angle = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0, p1, p2, p3, p4}, LvStudio/Android/GPhoto/GPhotoJNI;->BeginProcessPrevImageFromFile(Ljava/lang/String;III)Z
move-result v0
if-eqz v0, :cond_4d
invoke-direct {p0}, LvStudio/Android/GPhoto/GPhotoJNI;->GetPrevImageWidth()I
move-result v1
iput v1, p0, LvStudio/Android/GPhoto/GPhotoJNI;->mPreviewWidth:I
invoke-direct {p0}, LvStudio/Android/GPhoto/GPhotoJNI;->GetPrevImageHeight()I
move-result v1
iput v1, p0, LvStudio/Android/GPhoto/GPhotoJNI;->mPreviewHeight:I
iput p4, p0, LvStudio/Android/GPhoto/GPhotoJNI;->mThumbWidth:I
:cond_4d
return v0
.end method
.method public beginProcessPreview([BIIIIIIF)Z
.registers 13
sget-object v1, LvStudio/Android/GPhoto/GPhotoJNI;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "beginProcessPreview: size = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " x "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " thumb size = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " x "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ", angle = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct/range {p0 .. p8}, LvStudio/Android/GPhoto/GPhotoJNI;->BeginProcessPrevImage([BIIIIIIF)Z
move-result v0
if-eqz v0, :cond_57
invoke-direct {p0}, LvStudio/Android/GPhoto/GPhotoJNI;->GetPrevImageWidth()I
move-result v1
iput v1, p0, LvStudio/Android/GPhoto/GPhotoJNI;->mPreviewWidth:I
invoke-direct {p0}, LvStudio/Android/GPhoto/GPhotoJNI;->GetPrevImageHeight()I
move-result v1
iput v1, p0, LvStudio/Android/GPhoto/GPhotoJNI;->mPreviewHeight:I
iput p6, p0, LvStudio/Android/GPhoto/GPhotoJNI;->mThumbWidth:I
iput p7, p0, LvStudio/Android/GPhoto/GPhotoJNI;->mThumbHeight:I
:cond_57
return v0
.end method
.method public native clearGridImages()V
.end method
.method public getPreviewHeight()I
.registers 2
iget v0, p0, LvStudio/Android/GPhoto/GPhotoJNI;->mPreviewHeight:I
return v0
.end method
.method public getPreviewWidth()I
.registers 2
iget v0, p0, LvStudio/Android/GPhoto/GPhotoJNI;->mPreviewWidth:I
return v0
.end method
.method public getThumbHeight()I
.registers 2
iget v0, p0, LvStudio/Android/GPhoto/GPhotoJNI;->mThumbHeight:I
return v0
.end method
.method public getThumbWidth()I
.registers 2
iget v0, p0, LvStudio/Android/GPhoto/GPhotoJNI;->mThumbWidth:I
return v0
.end method
.method public native makeGridImageFor2EX(ILjava/lang/String;)[B
.end method
.method public native makeGridImageFor4EX(ILjava/lang/String;)[B
.end method
.method public native makeSpliceImage(IILjava/lang/String;I)Z
.end method
.method public native setGridImage(I[BII)Z
.end method
.method public setPhotoPanoQuality()V
.registers 10
const/4 v8, 0x1
const/4 v3, 0x0
const/4 v7, 0x6
const/4 v6, 0x0
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPicQuality()I
move-result v1
sget-object v0, LvStudio/Android/GPhoto/GPhotoJNI;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v4, "set jniParams for pano picQuality = "
invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
iget v0, p0, LvStudio/Android/GPhoto/GPhotoJNI;->quality:I
if-eq v0, v1, :cond_2c
const/4 v2, 0x1
const/4 v4, 0x6
const/4 v5, 0x0
move-object v0, p0
invoke-virtual/range {v0 .. v5}, LvStudio/Android/GPhoto/GPhotoJNI;->SetParams(IZZII)Z
:cond_2c
return-void
.end method
.method public native test(I)I
.end method
.method public native testf1(I)Ljava/lang/String;
.end method
.method public native testf2(I)Ljava/lang/String;
.end method
.method public native tests(I)Ljava/lang/String;
.end method
.method public native testss(I)Ljava/lang/String;
.end method