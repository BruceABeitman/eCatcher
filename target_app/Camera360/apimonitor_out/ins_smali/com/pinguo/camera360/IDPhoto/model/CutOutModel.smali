.class public Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;
.super Ljava/lang/Object;
.source "CutOutModel.java"
.field private static final BG_COLOR_TEST_LENGTH:I = 0x1e
.field private static final COLOR_THRESHOLD:I = 0x78
.field public static final TAG:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static checkCutoutDone()Z
.registers 7
const/4 v3, 0x0
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getOutPics()[Ljava/lang/String;
move-result-object v2
array-length v5, v2
move v4, v3
:goto_7
if-lt v4, v5, :cond_b
const/4 v3, 0x1
:cond_a
return v3
:cond_b
aget-object v0, v2, v4
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v6
if-eqz v6, :cond_a
add-int/lit8 v4, v4, 0x1
goto :goto_7
.end method
.method private static computeAverageColor(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)[I
.registers 12
const/4 v4, 0x0
const/4 v1, 0x0
const/4 v0, 0x0
const/4 v3, 0x0
iget v5, p0, Landroid/graphics/Rect;->left:I
:goto_6
iget v7, p0, Landroid/graphics/Rect;->right:I
if-lt v5, v7, :cond_4b
int-to-float v7, v3
div-float/2addr v4, v7
int-to-float v7, v3
div-float/2addr v1, v7
int-to-float v7, v3
div-float/2addr v0, v7
sget-object v7, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->TAG:Ljava/lang/String;
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "computeAverageColor, r:"
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, ", g:"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, "b:"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
const/4 v7, 0x3
new-array v7, v7, [I
const/4 v8, 0x0
float-to-int v9, v4
aput v9, v7, v8
const/4 v8, 0x1
float-to-int v9, v1
aput v9, v7, v8
const/4 v8, 0x2
float-to-int v9, v0
aput v9, v7, v8
return-object v7
:cond_4b
iget v6, p0, Landroid/graphics/Rect;->top:I
:goto_4d
iget v7, p0, Landroid/graphics/Rect;->bottom:I
if-lt v6, v7, :cond_54
add-int/lit8 v5, v5, 0x1
goto :goto_6
:cond_54
invoke-virtual {p1, v5, v6}, Landroid/graphics/Bitmap;->getPixel(II)I
move-result v2
const/high16 v7, 0xff
and-int/2addr v7, v2
shr-int/lit8 v7, v7, 0x10
int-to-float v7, v7
add-float/2addr v4, v7
const v7, 0xff00
and-int/2addr v7, v2
shr-int/lit8 v7, v7, 0x8
int-to-float v7, v7
add-float/2addr v1, v7
and-int/lit16 v7, v2, 0xff
int-to-float v7, v7
add-float/2addr v0, v7
add-int/lit8 v3, v3, 0x1
add-int/lit8 v6, v6, 0x1
goto :goto_4d
.end method
.method private static computeAverageColor([I[I)[I
.registers 9
const/4 v2, 0x3
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
if-eqz p0, :cond_e
if-eqz p1, :cond_e
array-length v1, p0
if-ne v1, v2, :cond_e
array-length v1, p1
if-eq v1, v2, :cond_10
:cond_e
const/4 v0, 0x0
:goto_f
return-object v0
:cond_10
new-array v0, v2, [I
aget v1, p0, v4
aget v2, p1, v4
add-int/2addr v1, v2
div-int/lit8 v1, v1, 0x2
aput v1, v0, v4
aget v1, p0, v5
aget v2, p1, v5
add-int/2addr v1, v2
div-int/lit8 v1, v1, 0x2
aput v1, v0, v5
aget v1, p0, v6
aget v2, p1, v6
add-int/2addr v1, v2
div-int/lit8 v1, v1, 0x2
aput v1, v0, v6
sget-object v1, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "computeAverage color1 and color2, r:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
aget v3, v0, v4
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ", g:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
aget v3, v0, v5
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "b:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
aget v3, v0, v6
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_f
.end method
.method public static getAlphaPicPath()Ljava/lang/String;
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getDebackgroundCacheFolder()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "out_img2.jpg"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getAlphaPicWithSkinEffectPath()Ljava/lang/String;
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getDebackgroundCacheFolder()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "out_img2_with_skin_effect.jpg"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getBgPicPath()Ljava/lang/String;
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getDebackgroundCacheFolder()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "out_img1.jpg"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getBgPicWithSkinEffectPath()Ljava/lang/String;
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getDebackgroundCacheFolder()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "out_img1_with_skin_effect.jpg"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getCacheFolder()Ljava/lang/String;
.registers 3
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "id_photo_cache"
invoke-static {v1, v2}, Lcom/pinguo/camera360/scenetemplate/ImageCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/lang/String;)Z
return-object v0
.end method
.method public static getDebackgroundCacheFolder()Ljava/lang/String;
.registers 3
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getCacheFolder()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "debackground"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/lang/String;)Z
return-object v0
.end method
.method public static getMadePicPath()Ljava/lang/String;
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getDebackgroundCacheFolder()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "made_img.jpg"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getOutPics()[Ljava/lang/String;
.registers 4
const/4 v1, 0x2
new-array v0, v1, [Ljava/lang/String;
const/4 v1, 0x0
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getDebackgroundCacheFolder()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "out_img1.jpg"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getDebackgroundCacheFolder()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "out_img2.jpg"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
return-object v0
.end method
.method public static getTestDebackgroundFolder()Ljava/lang/String;
.registers 3
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getCacheFolder()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "debackground"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "test"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/lang/String;)Z
return-object v0
.end method
.method public static isBgColorCloseToClothes(Landroid/graphics/Bitmap;Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;)Z
.registers 14
const/4 v11, 0x0
const/16 v6, 0x1e
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v9
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v3
new-instance v4, Landroid/graphics/Rect;
invoke-direct {v4, v11, v11, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V
new-instance v7, Landroid/graphics/Rect;
sub-int v10, v9, v6
invoke-direct {v7, v10, v11, v9, v6}, Landroid/graphics/Rect;-><init>(IIII)V
invoke-static {v4, p0}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->computeAverageColor(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)[I
move-result-object v5
invoke-static {v7, p0}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->computeAverageColor(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)[I
move-result-object v8
invoke-static {v5, v8}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->computeAverageColor([I[I)[I
move-result-object v0
new-instance v1, Landroid/graphics/Rect;
sub-int v10, v3, v6
invoke-direct {v1, v11, v10, v9, v3}, Landroid/graphics/Rect;-><init>(IIII)V
invoke-static {v1, p0}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->computeAverageColor(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)[I
move-result-object v2
invoke-static {v0, v2}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->isColorExceedThreshold([I[I)Z
move-result v10
return v10
.end method
.method private static isColorExceedThreshold([I[I)Z
.registers 12
const/4 v9, 0x2
const/4 v5, 0x1
const/4 v6, 0x0
aget v7, p0, v6
aget v8, p1, v6
sub-int v4, v7, v8
aget v7, p0, v5
aget v8, p1, v5
sub-int v1, v7, v8
aget v7, p0, v9
aget v8, p1, v9
sub-int v0, v7, v8
mul-int v7, v4, v4
mul-int v8, v1, v1
add-int/2addr v7, v8
mul-int v8, v0, v0
add-int/2addr v7, v8
int-to-double v7, v7
invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v2
sget-object v7, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->TAG:Ljava/lang/String;
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "comput color threshold:"
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
const-wide/high16 v7, 0x405e
cmpg-double v7, v2, v7
if-gez v7, :cond_3e
:goto_3d
return v5
:cond_3e
move v5, v6
goto :goto_3d
.end method
.method public static saveAssistPhoto(Landroid/graphics/Bitmap;Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;)Z
.registers 12
const/4 v6, 0x0
if-eqz p0, :cond_5
if-nez p1, :cond_6
:goto_5
:cond_5
return v6
:cond_6
sget-object v7, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->TAG:Ljava/lang/String;
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "saveAssistPhoto, width:"
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, ", height:"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, ",face:"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
new-instance v3, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;
invoke-direct {v3}, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;-><init>()V
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v7
div-int/lit8 v7, v7, 0x3
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v8
div-int/lit8 v8, v8, 0x3
invoke-virtual {v3, v7, v8, p1}, Lcom/pinguo/camera360/IDPhoto/model/IDCameraGuideMaker;->makeGuideBitmap(IILcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getDebackgroundCacheFolder()Ljava/lang/String;
move-result-object v1
new-instance v7, Ljava/lang/StringBuilder;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, "flag_img.jpg"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
new-instance v7, Ljava/lang/StringBuilder;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, "made_img.jpg"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
const/16 v7, 0x64
:try_start_88
invoke-static {v5, p0, v7}, Lcom/pinguo/lib/util/FileUtils;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
const/16 v7, 0x64
invoke-static {v4, v2, v7}, Lcom/pinguo/lib/util/FileUtils;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
:try_end_90
.catch Ljava/io/IOException; {:try_start_88 .. :try_end_90} :catch_93
const/4 v6, 0x1
goto/16 :goto_5
:catch_93
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_5
.end method
.method public clearCacheFile()V
.registers 2
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getDebackgroundCacheFolder()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/lib/util/FileUtils;->deleteFile(Ljava/lang/String;)V
return-void
.end method
.method public makeCutoutPic(Landroid/graphics/Bitmap;)V
.registers 13
new-instance v1, LvStudio/Android/GPhoto/GPhotoJNI;
invoke-direct {v1}, LvStudio/Android/GPhoto/GPhotoJNI;-><init>()V
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getDebackgroundCacheFolder()Ljava/lang/String;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
sget-object v7, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->TAG:Ljava/lang/String;
const-string/jumbo v8, "start makeCutoutPic jni cutout"
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getDebackgroundCacheFolder()Ljava/lang/String;
move-result-object v7
invoke-static {}, Lcom/pinguo/lib/util/SystemUtils;->getCpuCoresNum()I
move-result v8
mul-int/lit8 v8, v8, 0x2
invoke-virtual {v1, p1, v7, v8}, LvStudio/Android/GPhoto/GPhotoJNI;->DeBackground(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z
move-result v2
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
sget-object v7, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->TAG:Ljava/lang/String;
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "makeCutoutPic success:"
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, ", time:"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
sub-long v9, v3, v5
invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method