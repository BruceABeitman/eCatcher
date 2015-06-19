.class public Lcom/tencent/mm/sdk/modelmsg/WXImageObject;
.super Ljava/lang/Object;
.implements Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;
.field private static final CONTENT_LENGTH_LIMIT:I = 0xa00000
.field private static final PATH_LENGTH_LIMIT:I = 0x2800
.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.WXImageObject"
.field private static final URL_LENGTH_LIMIT:I = 0x2800
.field public imageData:[B
.field public imagePath:Ljava/lang/String;
.field public imageUrl:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(Landroid/graphics/Bitmap;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
:try_start_3
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v2, 0x55
invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
iput-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imageData:[B
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
:goto_18
:try_end_18
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_19
return-void
:catch_19
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_18
.end method
.method public constructor <init>([B)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imageData:[B
return-void
.end method
.method private getFileSize(Ljava/lang/String;)I
.registers 5
const/4 v0, 0x0
if-eqz p1, :cond_9
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_a
:cond_9
:goto_9
return v0
:cond_a
new-instance v1, Ljava/io/File;
invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_9
invoke-virtual {v1}, Ljava/io/File;->length()J
move-result-wide v0
long-to-int v0, v0
goto :goto_9
.end method
.method public checkArgs()Z
.registers 5
const/high16 v3, 0xa0
const/16 v2, 0x2800
const/4 v0, 0x0
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imageData:[B
if-eqz v1, :cond_e
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imageData:[B
array-length v1, v1
if-nez v1, :cond_30
:cond_e
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imagePath:Ljava/lang/String;
if-eqz v1, :cond_1a
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imagePath:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_30
:cond_1a
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imageUrl:Ljava/lang/String;
if-eqz v1, :cond_26
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imageUrl:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_30
:cond_26
const-string/jumbo v1, "MicroMsg.SDK.WXImageObject"
const-string/jumbo v2, "checkArgs fail, all arguments are null"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_2f
return v0
:cond_30
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imageData:[B
if-eqz v1, :cond_43
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imageData:[B
array-length v1, v1
if-le v1, v3, :cond_43
const-string/jumbo v1, "MicroMsg.SDK.WXImageObject"
const-string/jumbo v2, "checkArgs fail, content is too large"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2f
:cond_43
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imagePath:Ljava/lang/String;
if-eqz v1, :cond_59
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imagePath:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-le v1, v2, :cond_59
const-string/jumbo v1, "MicroMsg.SDK.WXImageObject"
const-string/jumbo v2, "checkArgs fail, path is invalid"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2f
:cond_59
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imagePath:Ljava/lang/String;
if-eqz v1, :cond_6f
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imagePath:Ljava/lang/String;
invoke-direct {p0, v1}, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->getFileSize(Ljava/lang/String;)I
move-result v1
if-le v1, v3, :cond_6f
const-string/jumbo v1, "MicroMsg.SDK.WXImageObject"
const-string/jumbo v2, "checkArgs fail, image content is too large"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2f
:cond_6f
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imageUrl:Ljava/lang/String;
if-eqz v1, :cond_85
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imageUrl:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-le v1, v2, :cond_85
const-string/jumbo v1, "MicroMsg.SDK.WXImageObject"
const-string/jumbo v2, "checkArgs fail, url is invalid"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2f
:cond_85
const/4 v0, 0x1
goto :goto_2f
.end method
.method public serialize(Landroid/os/Bundle;)V
.registers 4
const-string/jumbo v0, "_wximageobject_imageData"
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imageData:[B
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
const-string/jumbo v0, "_wximageobject_imagePath"
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imagePath:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "_wximageobject_imageUrl"
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imageUrl:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public setImagePath(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imagePath:Ljava/lang/String;
return-void
.end method
.method public type()I
.registers 2
const/4 v0, 0x2
return v0
.end method
.method public unserialize(Landroid/os/Bundle;)V
.registers 3
const-string/jumbo v0, "_wximageobject_imageData"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B
move-result-object v0
iput-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imageData:[B
const-string/jumbo v0, "_wximageobject_imagePath"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imagePath:Ljava/lang/String;
const-string/jumbo v0, "_wximageobject_imageUrl"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imageUrl:Ljava/lang/String;
return-void
.end method