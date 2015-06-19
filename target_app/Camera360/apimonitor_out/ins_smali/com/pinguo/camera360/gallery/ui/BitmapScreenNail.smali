.class public Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;
.super Ljava/lang/Object;
.source "BitmapScreenNail.java"
.implements Lcom/pinguo/camera360/gallery/ui/ScreenNail;
.field private static final ANIMATION_DONE:J = -0x3L
.field private static final ANIMATION_NEEDED:J = -0x2L
.field private static final ANIMATION_NOT_NEEDED:J = -0x1L
.field private static final DURATION:I = 0xb4
.field private static final MAX_SIDE:I = 0x280
.field private static final PLACEHOLDER_COLOR:I = -0xddddde
.field private static final TAG:Ljava/lang/String; = "BitmapScreenNail"
.field private mAnimationStartTime:J
.field private mBitmap:Landroid/graphics/Bitmap;
.field private mHeight:I
.field private mLoadingTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
.field private mTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
.field private mWidth:I
.method public constructor <init>(IILcom/pinguo/camera360/gallery/ui/BitmapTexture;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mAnimationStartTime:J
iput-object p3, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mLoadingTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->setSize(II)V
return-void
.end method
.method public constructor <init>(Landroid/graphics/Bitmap;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mAnimationStartTime:J
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mWidth:I
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mHeight:I
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;
return-void
.end method
.method private getRatio()F
.registers 7
const/high16 v5, 0x3f80
invoke-static {}, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->now()J
move-result-wide v1
iget-wide v3, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mAnimationStartTime:J
sub-long/2addr v1, v3
long-to-float v1, v1
const/high16 v2, 0x4334
div-float v0, v1, v2
sub-float v1, v5, v0
const/4 v2, 0x0
invoke-static {v1, v2, v5}, Lcom/pinguo/camera360/gallery/util/Utils;->clamp(FFF)F
move-result v1
return v1
.end method
.method private static now()J
.registers 2
invoke-static {}, Lcom/pinguo/camera360/gallery/ui/AnimationTime;->get()J
move-result-wide v0
return-wide v0
.end method
.method private setSize(II)V
.registers 7
if-eqz p1, :cond_4
if-nez p2, :cond_8
:cond_4
const/16 p1, 0x280
const/16 p2, 0x1e0
:cond_8
const/high16 v1, 0x3f80
const/high16 v2, 0x4420
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
iput v1, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mWidth:I
int-to-float v1, p2
mul-float/2addr v1, v0
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v1
iput v1, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mHeight:I
return-void
.end method
.method public combine(Lcom/pinguo/camera360/gallery/ui/ScreenNail;)Lcom/pinguo/camera360/gallery/ui/ScreenNail;
.registers 6
const/4 v3, 0x0
if-nez p1, :cond_4
:goto_3
return-object p0
:cond_4
instance-of v1, p1, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;
if-nez v1, :cond_d
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->recycle()V
move-object p0, p1
goto :goto_3
:cond_d
move-object v0, p1
check-cast v0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;
iget v1, v0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mWidth:I
iput v1, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mWidth:I
iget v1, v0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mHeight:I
iput v1, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mHeight:I
iget-object v1, v0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;
if-eqz v1, :cond_3a
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;
if-eqz v1, :cond_29
invoke-static {}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getThumbPool()Lcom/pinguo/camera360/gallery/data/BitmapPool;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V
:cond_29
iget-object v1, v0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;
iput-object v3, v0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
if-eqz v1, :cond_3a
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;->recycle()V
iput-object v3, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
:cond_3a
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->recycle()V
goto :goto_3
.end method
.method public draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIII)V
.registers 12
const-wide/16 v4, -0x2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;
if-nez v0, :cond_1b
iget-wide v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mAnimationStartTime:J
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-nez v0, :cond_10
iput-wide v4, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mAnimationStartTime:J
:cond_10
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mLoadingTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
move-object v1, p1
move v2, p2
move v3, p3
move v4, p4
move v5, p5
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIII)V
:goto_1a
return-void
:cond_1b
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
if-nez v0, :cond_28
new-instance v0, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;
invoke-direct {v0, v1}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
:cond_28
iget-wide v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mAnimationStartTime:J
cmp-long v0, v0, v4
if-nez v0, :cond_34
invoke-static {}, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->now()J
move-result-wide v0
iput-wide v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mAnimationStartTime:J
:cond_34
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
move-object v1, p1
move v2, p2
move v3, p3
move v4, p4
move v5, p5
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIII)V
goto :goto_1a
.end method
.method public draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
.registers 10
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;
if-nez v0, :cond_18
iget v1, p3, Landroid/graphics/RectF;->left:F
iget v2, p3, Landroid/graphics/RectF;->top:F
invoke-virtual {p3}, Landroid/graphics/RectF;->width()F
move-result v3
invoke-virtual {p3}, Landroid/graphics/RectF;->height()F
move-result v4
const v5, -0xddddde
move-object v0, p1
invoke-interface/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->fillRect(FFFFI)V
:goto_17
return-void
:cond_18
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
if-nez v0, :cond_25
new-instance v0, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;
invoke-direct {v0, v1}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
:cond_25
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
invoke-interface {p1, v0, p2, p3}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->drawTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
goto :goto_17
.end method
.method public getHeight()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mHeight:I
return v0
.end method
.method public getWidth()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mWidth:I
return v0
.end method
.method public isAnimating()Z
.registers 6
const/4 v0, 0x0
iget-wide v1, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mAnimationStartTime:J
const-wide/16 v3, 0x0
cmp-long v1, v1, v3
if-gez v1, :cond_a
:goto_9
return v0
:cond_a
invoke-static {}, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->now()J
move-result-wide v1
iget-wide v3, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mAnimationStartTime:J
sub-long/2addr v1, v3
const-wide/16 v3, 0xb4
cmp-long v1, v1, v3
if-ltz v1, :cond_1c
const-wide/16 v1, -0x3
iput-wide v1, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mAnimationStartTime:J
goto :goto_9
:cond_1c
const/4 v0, 0x1
goto :goto_9
.end method
.method public isShowingPlaceholder()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_c
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->isAnimating()Z
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
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;->recycle()V
iput-object v2, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
:cond_c
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_1b
invoke-static {}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getThumbPool()Lcom/pinguo/camera360/gallery/data/BitmapPool;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V
iput-object v2, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;
:cond_1b
return-void
.end method
.method public updatePlaceholderSize(II)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
if-eqz p1, :cond_4
if-eqz p2, :cond_4
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->setSize(II)V
goto :goto_4
.end method