.class public Lcom/pinguo/album/opengles/ResourceTexture;
.super Lcom/pinguo/album/opengles/UploadedTexture;
.source "ResourceTexture.java"
.field protected final mContext:Landroid/content/Context;
.field protected final mResId:I
.method public constructor <init>(Landroid/content/Context;I)V
.registers 4
invoke-direct {p0}, Lcom/pinguo/album/opengles/UploadedTexture;-><init>()V
invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V
iput-object p1, p0, Lcom/pinguo/album/opengles/ResourceTexture;->mContext:Landroid/content/Context;
iput p2, p0, Lcom/pinguo/album/opengles/ResourceTexture;->mResId:I
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/pinguo/album/opengles/ResourceTexture;->setOpaque(Z)V
return-void
.end method
.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
.registers 3
invoke-static {}, Lcom/pinguo/album/opengles/ResourceTexture;->inFinalizer()Z
move-result v0
if-nez v0, :cond_9
invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
:cond_9
return-void
.end method
.method protected onGetBitmap()Landroid/graphics/Bitmap;
.registers 4
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
iget-object v1, p0, Lcom/pinguo/album/opengles/ResourceTexture;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
iget v2, p0, Lcom/pinguo/album/opengles/ResourceTexture;->mResId:I
invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v1
return-object v1
.end method