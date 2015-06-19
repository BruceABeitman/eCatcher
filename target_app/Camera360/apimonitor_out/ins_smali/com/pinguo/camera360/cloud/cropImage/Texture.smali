.class public abstract Lcom/pinguo/camera360/cloud/cropImage/Texture;
.super Ljava/lang/Object;
.source "Texture.java"
.field public static final STATE_ERROR:I = 0x4
.field public static final STATE_LOADED:I = 0x3
.field public static final STATE_LOADING:I = 0x2
.field public static final STATE_QUEUED:I = 0x1
.field public static final STATE_UNLOADED:I
.field public mBitmap:Landroid/graphics/Bitmap;
.field public mHeight:I
.field public mNormalizedHeight:F
.field public mNormalizedWidth:F
.field public mState:I
.field public mWidth:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Texture;->mState:I
return-void
.end method
.method public final clear()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Texture;->mState:I
iput v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Texture;->mWidth:I
iput v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Texture;->mHeight:I
iput v1, p0, Lcom/pinguo/camera360/cloud/cropImage/Texture;->mNormalizedWidth:F
iput v1, p0, Lcom/pinguo/camera360/cloud/cropImage/Texture;->mNormalizedHeight:F
iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Texture;->mBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Texture;->mBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Texture;->mBitmap:Landroid/graphics/Bitmap;
:cond_18
return-void
.end method
.method public final getHeight()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Texture;->mHeight:I
return v0
.end method
.method public final getNormalizedHeight()F
.registers 2
iget v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Texture;->mNormalizedHeight:F
return v0
.end method
.method public final getNormalizedWidth()F
.registers 2
iget v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Texture;->mNormalizedWidth:F
return v0
.end method
.method public final getState()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Texture;->mState:I
return v0
.end method
.method public final getWidth()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Texture;->mWidth:I
return v0
.end method
.method public isCached()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final isLoaded()Z
.registers 3
iget v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Texture;->mState:I
const/4 v1, 0x3
if-ne v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public isUncachedVideo()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public abstract load(Landroid/view/View;)Landroid/graphics/Bitmap;
.end method
.method public shouldQueue()Z
.registers 2
const/4 v0, 0x1
return v0
.end method