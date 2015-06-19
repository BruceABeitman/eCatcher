.class public Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;
.super Ljava/lang/Object;
.implements Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;
.field private static final CONTENT_LENGTH_LIMIT:I = 0xa00000
.field private static final EXTINFO_LENGTH_LIMIT:I = 0x800
.field private static final PATH_LENGTH_LIMIT:I = 0x2800
.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.WXAppExtendObject"
.field public extInfo:Ljava/lang/String;
.field public fileData:[B
.field public filePath:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->extInfo:Ljava/lang/String;
iput-object p2, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->filePath:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;[B)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->extInfo:Ljava/lang/String;
iput-object p2, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->fileData:[B
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
const/4 v0, 0x0
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->extInfo:Ljava/lang/String;
if-eqz v1, :cond_f
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->extInfo:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_2e
:cond_f
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->filePath:Ljava/lang/String;
if-eqz v1, :cond_1b
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->filePath:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_2e
:cond_1b
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->fileData:[B
if-eqz v1, :cond_24
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->fileData:[B
array-length v1, v1
if-nez v1, :cond_2e
:cond_24
const-string/jumbo v1, "MicroMsg.SDK.WXAppExtendObject"
const-string/jumbo v2, "checkArgs fail, all arguments is null"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_2d
return v0
:cond_2e
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->extInfo:Ljava/lang/String;
if-eqz v1, :cond_46
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->extInfo:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
const/16 v2, 0x800
if-le v1, v2, :cond_46
const-string/jumbo v1, "MicroMsg.SDK.WXAppExtendObject"
const-string/jumbo v2, "checkArgs fail, extInfo is invalid"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2d
:cond_46
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->filePath:Ljava/lang/String;
if-eqz v1, :cond_5e
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->filePath:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
const/16 v2, 0x2800
if-le v1, v2, :cond_5e
const-string/jumbo v1, "MicroMsg.SDK.WXAppExtendObject"
const-string/jumbo v2, "checkArgs fail, filePath is invalid"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2d
:cond_5e
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->filePath:Ljava/lang/String;
if-eqz v1, :cond_74
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->filePath:Ljava/lang/String;
invoke-direct {p0, v1}, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->getFileSize(Ljava/lang/String;)I
move-result v1
if-le v1, v3, :cond_74
const-string/jumbo v1, "MicroMsg.SDK.WXAppExtendObject"
const-string/jumbo v2, "checkArgs fail, fileSize is too large"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2d
:cond_74
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->fileData:[B
if-eqz v1, :cond_87
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->fileData:[B
array-length v1, v1
if-le v1, v3, :cond_87
const-string/jumbo v1, "MicroMsg.SDK.WXAppExtendObject"
const-string/jumbo v2, "checkArgs fail, fileData is too large"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2d
:cond_87
const/4 v0, 0x1
goto :goto_2d
.end method
.method public serialize(Landroid/os/Bundle;)V
.registers 4
const-string/jumbo v0, "_wxappextendobject_extInfo"
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->extInfo:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "_wxappextendobject_fileData"
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->fileData:[B
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
const-string/jumbo v0, "_wxappextendobject_filePath"
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->filePath:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public type()I
.registers 2
const/4 v0, 0x7
return v0
.end method
.method public unserialize(Landroid/os/Bundle;)V
.registers 3
const-string/jumbo v0, "_wxappextendobject_extInfo"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->extInfo:Ljava/lang/String;
const-string/jumbo v0, "_wxappextendobject_fileData"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B
move-result-object v0
iput-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->fileData:[B
const-string/jumbo v0, "_wxappextendobject_filePath"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->filePath:Ljava/lang/String;
return-void
.end method