.class public final Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
.super Ljava/lang/Object;
.field public static final ACTION_WXAPPMESSAGE:Ljava/lang/String; = "com.tencent.mm.sdk.openapi.Intent.ACTION_WXAPPMESSAGE"
.field private static final DESCRIPTION_LENGTH_LIMIT:I = 0x400
.field private static final MEDIA_TAG_NAME_LENGTH_LIMIT:I = 0x40
.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.WXMediaMessage"
.field private static final THUMB_LENGTH_LIMIT:I = 0x8000
.field private static final TITLE_LENGTH_LIMIT:I = 0x200
.field public description:Ljava/lang/String;
.field public mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;
.field public mediaTagName:Ljava/lang/String;
.field public sdkVer:I
.field public thumbData:[B
.field public title:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;)V
return-void
.end method
.method public constructor <init>(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;
return-void
.end method
.method final checkArgs()Z
.registers 4
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->getType()I
move-result v1
const/16 v2, 0x8
if-ne v1, v2, :cond_1c
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B
if-eqz v1, :cond_12
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B
array-length v1, v1
if-nez v1, :cond_1c
:cond_12
const-string/jumbo v1, "MicroMsg.SDK.WXMediaMessage"
const-string/jumbo v2, "checkArgs fail, thumbData should not be null when send emoji"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_1b
return v0
:cond_1c
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B
if-eqz v1, :cond_32
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B
array-length v1, v1
const v2, 0x8000
if-le v1, v2, :cond_32
const-string/jumbo v1, "MicroMsg.SDK.WXMediaMessage"
const-string/jumbo v2, "checkArgs fail, thumbData is invalid"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1b
:cond_32
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;
if-eqz v1, :cond_4a
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
const/16 v2, 0x200
if-le v1, v2, :cond_4a
const-string/jumbo v1, "MicroMsg.SDK.WXMediaMessage"
const-string/jumbo v2, "checkArgs fail, title is invalid"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1b
:cond_4a
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;
if-eqz v1, :cond_62
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
const/16 v2, 0x400
if-le v1, v2, :cond_62
const-string/jumbo v1, "MicroMsg.SDK.WXMediaMessage"
const-string/jumbo v2, "checkArgs fail, description is invalid"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1b
:cond_62
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;
if-nez v1, :cond_70
const-string/jumbo v1, "MicroMsg.SDK.WXMediaMessage"
const-string/jumbo v2, "checkArgs fail, mediaObject is null"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1b
:cond_70
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaTagName:Ljava/lang/String;
if-eqz v1, :cond_88
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaTagName:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
const/16 v2, 0x40
if-le v1, v2, :cond_88
const-string/jumbo v1, "MicroMsg.SDK.WXMediaMessage"
const-string/jumbo v2, "checkArgs fail, mediaTagName is too long"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1b
:cond_88
iget-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;
invoke-interface {v0}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;->checkArgs()Z
move-result v0
goto :goto_1b
.end method
.method public final getType()I
.registers 2
iget-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;
invoke-interface {v0}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;->type()I
move-result v0
goto :goto_5
.end method
.method public final setThumbImage(Landroid/graphics/Bitmap;)V
.registers 5
:try_start_0
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v2, 0x55
invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
iput-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
:try_end_15
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16
:goto_15
return-void
:catch_16
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string/jumbo v0, "MicroMsg.SDK.WXMediaMessage"
const-string/jumbo v1, "put thumb failed"
invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_15
.end method