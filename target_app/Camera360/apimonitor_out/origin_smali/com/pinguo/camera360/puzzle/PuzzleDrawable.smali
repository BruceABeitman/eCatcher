.class public Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
.super Ljava/lang/Object;
.source "PuzzleDrawable.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDegreeExif:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOriginalBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public canDraw()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public getBitMap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_5
.end method

.method public getWidth()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_5
.end method

.method public loadForOutput(Ljava/lang/String;FF)V
    .registers 13

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_25

    :cond_f
    sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " -- 0. load photo : file not exists : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    return-void

    :cond_25
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v6, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    cmpl-float v0, p2, p3

    if-lez v0, :cond_b4

    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    :goto_3b
    if-ge v8, v6, :cond_53

    sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "-- 0. load photo : set sample size to 1, org is : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    :cond_53
    sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " -- 1.load photo , ready load : inSampleSize = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", org size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", puzzleItem size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v1, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_be

    sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->TAG:Ljava/lang/String;

    const-string/jumbo v1, " -- 2. load photo :  fail"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_24

    :cond_b4
    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v0

    div-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    goto/16 :goto_3b

    :cond_be
    sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " -- 2. load photo finish, simple size : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", puzzleItem size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_118

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mMatrix:Landroid/graphics/Matrix;

    :cond_118
    sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->TAG:Ljava/lang/String;

    const-string/jumbo v2, " -- 4. load photo :  create Bitmap:"

    invoke-static {v0, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mMatrix:Landroid/graphics/Matrix;

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_24
.end method

.method public loadForPuzzle(Ljava/lang/String;FFLcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;Z)V
    .registers 15

    const/high16 v3, 0x4040

    const/high16 v2, 0x4000

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_13

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_29

    :cond_13
    sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " -- 0. load photo : file not exists : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v6, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    cmpl-float v0, p2, p3

    if-lez v0, :cond_ba

    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    :goto_41
    if-ge v8, v6, :cond_59

    sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "-- 0. load photo : set sample size to 1, org is : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    :cond_59
    sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " -- 1.load photo , ready load : inSampleSize = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", org size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", puzzleItem size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v1, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_c6

    sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->TAG:Ljava/lang/String;

    const-string/jumbo v1, " -- 2. load photo :  fail"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    :cond_ba
    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v0

    div-float/2addr v0, p3

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    goto/16 :goto_41

    :cond_c6
    sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " -- 2. load photo finish, simple size : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", puzzleItem size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_12c

    invoke-static {p1}, Lcom/pinguo/lib/image/Exif;->getPhotoOrientation(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mDegreeExif:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mDegreeExif:F

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_12c
    sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " -- 3. load photo :  set exif degree:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mDegreeExif:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->TAG:Ljava/lang/String;

    const-string/jumbo v2, " -- 4. load photo :  create Bitmap:"

    invoke-static {v0, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mMatrix:Landroid/graphics/Matrix;

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;->OUTPUT:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;

    if-ne p4, v0, :cond_28

    sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " -- *.release org bitmap when load, drawType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->releaseOriginalBitamap()V

    goto/16 :goto_28
.end method

.method public mirror(Z)V
    .registers 9

    const/4 v1, 0x0

    const/high16 v3, 0x3f80

    const/high16 v2, -0x4080

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_10

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mMatrix:Landroid/graphics/Matrix;

    :cond_10
    if-eqz p1, :cond_30

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    :goto_17
    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mMatrix:Landroid/graphics/Matrix;

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-void

    :cond_30
    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_17
.end method

.method public recycle()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_12
    iput-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :cond_14
    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_25
    iput-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    :cond_27
    return-void
.end method

.method public releaseOriginalBitamap()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    :cond_14
    return-void
.end method

.method public resetRotateAndrMirror()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public rotate()V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_c

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mMatrix:Landroid/graphics/Matrix;

    :cond_c
    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x42b4

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mMatrix:Landroid/graphics/Matrix;

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
