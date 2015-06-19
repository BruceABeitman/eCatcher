.class  Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;
.super Ljava/lang/Object;
.source "UploadedTexture.java"
.implements Ljava/lang/Cloneable;
.field public config:Landroid/graphics/Bitmap$Config;
.field public length:I
.field public vertical:Z
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;-><init>()V
return-void
.end method
.method public clone()Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;
.registers 3
:try_start_0
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;
:try_end_6
.catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7
return-object v1
:catch_7
move-exception v0
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v1
.end method
.method public bridge synthetic clone()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;->clone()Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;
move-result-object v0
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v1, 0x0
instance-of v2, p1, Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;
if-nez v2, :cond_6
:cond_5
:goto_5
return v1
:cond_6
move-object v0, p1
check-cast v0, Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;
iget-boolean v2, p0, Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;->vertical:Z
iget-boolean v3, v0, Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;->vertical:Z
if-ne v2, v3, :cond_5
iget-object v2, p0, Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;
iget-object v3, v0, Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;
if-ne v2, v3, :cond_5
iget v2, p0, Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;->length:I
iget v3, v0, Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;->length:I
if-ne v2, v3, :cond_5
const/4 v1, 0x1
goto :goto_5
.end method
.method public hashCode()I
.registers 4
iget-object v1, p0, Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;
invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I
move-result v1
iget v2, p0, Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;->length:I
xor-int v0, v1, v2
iget-boolean v1, p0, Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;->vertical:Z
if-eqz v1, :cond_f
:goto_e
return v0
:cond_f
neg-int v0, v0
goto :goto_e
.end method