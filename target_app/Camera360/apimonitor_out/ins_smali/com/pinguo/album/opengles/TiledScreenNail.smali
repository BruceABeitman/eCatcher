.class public Lcom/pinguo/album/opengles/TiledScreenNail;
.super Ljava/lang/Object;
.source "TiledScreenNail.java"
.implements Lcom/pinguo/album/opengles/ScreenNail;
.field private static final ANIMATION_DONE:J = -0x3L
.field private static final ANIMATION_NEEDED:J = -0x2L
.field private static final ANIMATION_NOT_NEEDED:J = -0x1L
.field private static final DURATION:I = 0xb4
.field private static final TAG:Ljava/lang/String; = "TiledScreenNail"
.field private static mDrawPlaceholder:Z
.field private static mPlaceholderColor:I
.field private static sMaxSide:I
.field private mAnimationStartTime:J
.field private mBitmap:Landroid/graphics/Bitmap;
.field private mHeight:I
.field private mLoadingTexture:Lcom/pinguo/album/opengles/StringTexture;
.field private mTexture:Lcom/pinguo/album/opengles/TiledTexture;
.field private mWidth:I
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x280
sput v0, Lcom/pinguo/album/opengles/TiledScreenNail;->sMaxSide:I
const v0, -0xddddde
sput v0, Lcom/pinguo/album/opengles/TiledScreenNail;->mPlaceholderColor:I
const/4 v0, 0x1
sput-boolean v0, Lcom/pinguo/album/opengles/TiledScreenNail;->mDrawPlaceholder:Z
return-void
.end method
.method public constructor <init>(II)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mAnimationStartTime:J
invoke-direct {p0, p1, p2}, Lcom/pinguo/album/opengles/TiledScreenNail;->setSize(II)V
return-void
.end method
.method public constructor <init>(Landroid/graphics/Bitmap;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mAnimationStartTime:J
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
iput v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mWidth:I
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v0
iput v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mHeight:I
iput-object p1, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;
new-instance v0, Lcom/pinguo/album/opengles/TiledTexture;
invoke-direct {v0, p1}, Lcom/pinguo/album/opengles/TiledTexture;-><init>(Landroid/graphics/Bitmap;)V
iput-object v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mTexture:Lcom/pinguo/album/opengles/TiledTexture;
return-void
.end method
.method public static disableDrawPlaceholder()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/pinguo/album/opengles/TiledScreenNail;->mDrawPlaceholder:Z
return-void
.end method
.method public static enableDrawPlaceholder()V
.registers 1
const/4 v0, 0x1
sput-boolean v0, Lcom/pinguo/album/opengles/TiledScreenNail;->mDrawPlaceholder:Z
return-void
.end method
.method private getRatio()F
.registers 7
const/high16 v5, 0x3f80
invoke-static {}, Lcom/pinguo/album/animations/AnimationTime;->get()J
move-result-wide v1
iget-wide v3, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mAnimationStartTime:J
sub-long/2addr v1, v3
long-to-float v1, v1
const/high16 v2, 0x4334
div-float v0, v1, v2
sub-float v1, v5, v0
const/4 v2, 0x0
invoke-static {v1, v2, v5}, Lcom/pinguo/album/utils/Utils;->clamp(FFF)F
move-result v1
return v1
.end method
.method public static setMaxSide(I)V
.registers 1
sput p0, Lcom/pinguo/album/opengles/TiledScreenNail;->sMaxSide:I
return-void
.end method
.method public static setPlaceholderColor(I)V
.registers 1
sput p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mPlaceholderColor:I
return-void
.end method
.method private setSize(II)V
.registers 7
if-eqz p1, :cond_4
if-nez p2, :cond_c
:cond_4
sget p1, Lcom/pinguo/album/opengles/TiledScreenNail;->sMaxSide:I
sget v1, Lcom/pinguo/album/opengles/TiledScreenNail;->sMaxSide:I
mul-int/lit8 v1, v1, 0x3
div-int/lit8 p2, v1, 0x4
:cond_c
const/high16 v1, 0x3f80
sget v2, Lcom/pinguo/album/opengles/TiledScreenNail;->sMaxSide:I
int-to-float v2, v2
invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I
move-result v3
int-to-float v3, v3
div-float/2addr v2, v3
invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F
move-result v0
int-to-float v1, p1
mul-float/2addr v1, v0
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v1
iput v1, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mWidth:I
int-to-float v1, p2
mul-float/2addr v1, v0
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v1
iput v1, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mHeight:I
return-void
.end method
.method public combine(Lcom/pinguo/album/opengles/ScreenNail;)Lcom/pinguo/album/opengles/ScreenNail;
.registers 6
const/4 v3, 0x0
if-nez p1, :cond_4
:goto_3
return-object p0
:cond_4
instance-of v1, p1, Lcom/pinguo/album/opengles/TiledScreenNail;
if-nez v1, :cond_d
invoke-virtual {p0}, Lcom/pinguo/album/opengles/TiledScreenNail;->recycle()V
move-object p0, p1
goto :goto_3
:cond_d
move-object v0, p1
check-cast v0, Lcom/pinguo/album/opengles/TiledScreenNail;
iget v1, v0, Lcom/pinguo/album/opengles/TiledScreenNail;->mWidth:I
iput v1, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mWidth:I
iget v1, v0, Lcom/pinguo/album/opengles/TiledScreenNail;->mHeight:I
iput v1, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mHeight:I
iget-object v1, v0, Lcom/pinguo/album/opengles/TiledScreenNail;->mTexture:Lcom/pinguo/album/opengles/TiledTexture;
if-eqz v1, :cond_3e
iget-object v1, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;
if-eqz v1, :cond_29
invoke-static {}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->getInstance()Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v1, v2}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->putForDecodeReuse(Landroid/graphics/Bitmap;)Z
:cond_29
iget-object v1, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mTexture:Lcom/pinguo/album/opengles/TiledTexture;
if-eqz v1, :cond_32
iget-object v1, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mTexture:Lcom/pinguo/album/opengles/TiledTexture;
invoke-virtual {v1}, Lcom/pinguo/album/opengles/TiledTexture;->recycle()V
:cond_32
iget-object v1, v0, Lcom/pinguo/album/opengles/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;
iput-object v1, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;
iget-object v1, v0, Lcom/pinguo/album/opengles/TiledScreenNail;->mTexture:Lcom/pinguo/album/opengles/TiledTexture;
iput-object v1, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mTexture:Lcom/pinguo/album/opengles/TiledTexture;
iput-object v3, v0, Lcom/pinguo/album/opengles/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;
iput-object v3, v0, Lcom/pinguo/album/opengles/TiledScreenNail;->mTexture:Lcom/pinguo/album/opengles/TiledTexture;
:cond_3e
invoke-virtual {v0}, Lcom/pinguo/album/opengles/TiledScreenNail;->recycle()V
goto :goto_3
.end method
.method public draw(Lcom/pinguo/album/opengles/GLESCanvas;IIII)V
.registers 14
const-wide/16 v4, -0x2
iget-object v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mTexture:Lcom/pinguo/album/opengles/TiledTexture;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mTexture:Lcom/pinguo/album/opengles/TiledTexture;
invoke-virtual {v0}, Lcom/pinguo/album/opengles/TiledTexture;->isReady()Z
move-result v0
if-nez v0, :cond_46
:cond_e
iget-wide v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mAnimationStartTime:J
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-nez v0, :cond_18
iput-wide v4, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mAnimationStartTime:J
:cond_18
sget-boolean v0, Lcom/pinguo/album/opengles/TiledScreenNail;->mDrawPlaceholder:Z
if-eqz v0, :cond_45
int-to-float v1, p2
int-to-float v2, p3
int-to-float v3, p4
int-to-float v4, p5
sget v5, Lcom/pinguo/album/opengles/TiledScreenNail;->mPlaceholderColor:I
move-object v0, p1
invoke-interface/range {v0 .. v5}, Lcom/pinguo/album/opengles/GLESCanvas;->fillRect(FFFFI)V
iget-object v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mLoadingTexture:Lcom/pinguo/album/opengles/StringTexture;
if-eqz v0, :cond_45
iget-object v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mLoadingTexture:Lcom/pinguo/album/opengles/StringTexture;
invoke-virtual {v0}, Lcom/pinguo/album/opengles/StringTexture;->getWidth()I
move-result v0
sub-int v0, p4, v0
div-int/lit8 v0, v0, 0x2
add-int/2addr p2, v0
iget-object v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mLoadingTexture:Lcom/pinguo/album/opengles/StringTexture;
invoke-virtual {v0}, Lcom/pinguo/album/opengles/StringTexture;->getHeight()I
move-result v0
sub-int v0, p5, v0
div-int/lit8 v0, v0, 0x2
add-int/2addr p3, v0
iget-object v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mLoadingTexture:Lcom/pinguo/album/opengles/StringTexture;
invoke-virtual {v0, p1, p2, p3}, Lcom/pinguo/album/opengles/StringTexture;->draw(Lcom/pinguo/album/opengles/GLESCanvas;II)V
:goto_45
:cond_45
return-void
:cond_46
iget-wide v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mAnimationStartTime:J
cmp-long v0, v0, v4
if-nez v0, :cond_52
invoke-static {}, Lcom/pinguo/album/animations/AnimationTime;->get()J
move-result-wide v0
iput-wide v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mAnimationStartTime:J
:cond_52
invoke-virtual {p0}, Lcom/pinguo/album/opengles/TiledScreenNail;->isAnimating()Z
move-result v0
if-eqz v0, :cond_69
iget-object v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mTexture:Lcom/pinguo/album/opengles/TiledTexture;
sget v2, Lcom/pinguo/album/opengles/TiledScreenNail;->mPlaceholderColor:I
invoke-direct {p0}, Lcom/pinguo/album/opengles/TiledScreenNail;->getRatio()F
move-result v3
move-object v1, p1
move v4, p2
move v5, p3
move v6, p4
move v7, p5
invoke-virtual/range {v0 .. v7}, Lcom/pinguo/album/opengles/TiledTexture;->drawMixed(Lcom/pinguo/album/opengles/GLESCanvas;IFIIII)V
goto :goto_45
:cond_69
iget-object v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mTexture:Lcom/pinguo/album/opengles/TiledTexture;
move-object v1, p1
move v2, p2
move v3, p3
move v4, p4
move v5, p5
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/album/opengles/TiledTexture;->draw(Lcom/pinguo/album/opengles/GLESCanvas;IIII)V
goto :goto_45
.end method
.method public draw(Lcom/pinguo/album/opengles/GLESCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
.registers 10
iget-object v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mTexture:Lcom/pinguo/album/opengles/TiledTexture;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mTexture:Lcom/pinguo/album/opengles/TiledTexture;
invoke-virtual {v0}, Lcom/pinguo/album/opengles/TiledTexture;->isReady()Z
move-result v0
if-nez v0, :cond_1f
:cond_c
iget v1, p3, Landroid/graphics/RectF;->left:F
iget v2, p3, Landroid/graphics/RectF;->top:F
invoke-virtual {p3}, Landroid/graphics/RectF;->width()F
move-result v3
invoke-virtual {p3}, Landroid/graphics/RectF;->height()F
move-result v4
sget v5, Lcom/pinguo/album/opengles/TiledScreenNail;->mPlaceholderColor:I
move-object v0, p1
invoke-interface/range {v0 .. v5}, Lcom/pinguo/album/opengles/GLESCanvas;->fillRect(FFFFI)V
:goto_1e
return-void
:cond_1f
iget-object v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mTexture:Lcom/pinguo/album/opengles/TiledTexture;
invoke-virtual {v0, p1, p2, p3}, Lcom/pinguo/album/opengles/TiledTexture;->draw(Lcom/pinguo/album/opengles/GLESCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
goto :goto_1e
.end method
.method public getHeight()I
.registers 2
iget v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mHeight:I
return v0
.end method
.method public getTexture()Lcom/pinguo/album/opengles/TiledTexture;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mTexture:Lcom/pinguo/album/opengles/TiledTexture;
return-object v0
.end method
.method public getWidth()I
.registers 2
iget v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mWidth:I
return v0
.end method
.method public isAnimating()Z
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v2, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mTexture:Lcom/pinguo/album/opengles/TiledTexture;
if-eqz v2, :cond_e
iget-object v2, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mTexture:Lcom/pinguo/album/opengles/TiledTexture;
invoke-virtual {v2}, Lcom/pinguo/album/opengles/TiledTexture;->isReady()Z
move-result v2
if-nez v2, :cond_10
:cond_e
move v0, v1
:goto_f
:cond_f
return v0
:cond_10
iget-wide v2, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mAnimationStartTime:J
const-wide/16 v4, 0x0
cmp-long v2, v2, v4
if-ltz v2, :cond_f
invoke-static {}, Lcom/pinguo/album/animations/AnimationTime;->get()J
move-result-wide v2
iget-wide v4, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mAnimationStartTime:J
sub-long/2addr v2, v4
const-wide/16 v4, 0xb4
cmp-long v2, v2, v4
if-ltz v2, :cond_2a
const-wide/16 v1, -0x3
iput-wide v1, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mAnimationStartTime:J
goto :goto_f
:cond_2a
move v0, v1
goto :goto_f
.end method
.method public isReady()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mTexture:Lcom/pinguo/album/opengles/TiledTexture;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mTexture:Lcom/pinguo/album/opengles/TiledTexture;
invoke-virtual {v0}, Lcom/pinguo/album/opengles/TiledTexture;->isReady()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public isShowingPlaceholder()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_c
invoke-virtual {p0}, Lcom/pinguo/album/opengles/TiledScreenNail;->isAnimating()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
const/4 v0, 0x1
goto :goto_b
.end method
.method public noDraw()V
.registers 1
return-void
.end method
.method public recycle()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mTexture:Lcom/pinguo/album/opengles/TiledTexture;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mTexture:Lcom/pinguo/album/opengles/TiledTexture;
invoke-virtual {v0}, Lcom/pinguo/album/opengles/TiledTexture;->recycle()V
iput-object v2, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mTexture:Lcom/pinguo/album/opengles/TiledTexture;
:cond_c
iget-object v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_1b
invoke-static {}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->getInstance()Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0, v1}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->putForDecodeReuse(Landroid/graphics/Bitmap;)Z
iput-object v2, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;
:cond_1b
return-void
.end method
.method public setLoadingTexture(Lcom/pinguo/album/opengles/StringTexture;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mLoadingTexture:Lcom/pinguo/album/opengles/StringTexture;
return-void
.end method
.method public updatePlaceholderSize(II)V
.registers 4
iget-object v0, p0, Lcom/pinguo/album/opengles/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
if-eqz p1, :cond_4
if-eqz p2, :cond_4
invoke-direct {p0, p1, p2}, Lcom/pinguo/album/opengles/TiledScreenNail;->setSize(II)V
goto :goto_4
.end method