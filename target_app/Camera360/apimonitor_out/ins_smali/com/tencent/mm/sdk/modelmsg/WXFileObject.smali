.class public Lcom/tencent/mm/sdk/modelmsg/WXFileObject;
.super Ljava/lang/Object;
.implements Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;
.field private static final CONTENT_LENGTH_LIMIT:I = 0xa00000
.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.WXFileObject"
.field private contentLengthLimit:I
.field public fileData:[B
.field public filePath:Ljava/lang/String;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/high16 v0, 0xa0
iput v0, p0, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->contentLengthLimit:I
iput-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->fileData:[B
iput-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->filePath:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/high16 v0, 0xa0
iput v0, p0, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->contentLengthLimit:I
iput-object p1, p0, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->filePath:Ljava/lang/String;
return-void
.end method
.method public constructor <init>([B)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/high16 v0, 0xa0
iput v0, p0, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->contentLengthLimit:I
iput-object p1, p0, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->fileData:[B
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
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->fileData:[B
if-eqz v1, :cond_a
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->fileData:[B
array-length v1, v1
if-nez v1, :cond_20
:cond_a
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->filePath:Ljava/lang/String;
if-eqz v1, :cond_16
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->filePath:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_20
:cond_16
const-string/jumbo v1, "MicroMsg.SDK.WXFileObject"
const-string/jumbo v2, "checkArgs fail, both arguments is null"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_1f
return v0
:cond_20
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->fileData:[B
if-eqz v1, :cond_35
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->fileData:[B
array-length v1, v1
iget v2, p0, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->contentLengthLimit:I
if-le v1, v2, :cond_35
const-string/jumbo v1, "MicroMsg.SDK.WXFileObject"
const-string/jumbo v2, "checkArgs fail, fileData is too large"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1f
:cond_35
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->filePath:Ljava/lang/String;
if-eqz v1, :cond_4d
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->filePath:Ljava/lang/String;
invoke-direct {p0, v1}, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->getFileSize(Ljava/lang/String;)I
move-result v1
iget v2, p0, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->contentLengthLimit:I
if-le v1, v2, :cond_4d
const-string/jumbo v1, "MicroMsg.SDK.WXFileObject"
const-string/jumbo v2, "checkArgs fail, fileSize is too large"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1f
:cond_4d
const/4 v0, 0x1
goto :goto_1f
.end method
.method public serialize(Landroid/os/Bundle;)V
.registers 4
const-string/jumbo v0, "_wxfileobject_fileData"
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->fileData:[B
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
const-string/jumbo v0, "_wxfileobject_filePath"
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->filePath:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public setContentLengthLimit(I)V
.registers 2
iput p1, p0, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->contentLengthLimit:I
return-void
.end method
.method public setFileData([B)V
.registers 2
iput-object p1, p0, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->fileData:[B
return-void
.end method
.method public setFilePath(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->filePath:Ljava/lang/String;
return-void
.end method
.method public type()I
.registers 2
const/4 v0, 0x6
return v0
.end method
.method public unserialize(Landroid/os/Bundle;)V
.registers 3
const-string/jumbo v0, "_wxfileobject_fileData"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B
move-result-object v0
iput-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->fileData:[B
const-string/jumbo v0, "_wxfileobject_filePath"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;->filePath:Ljava/lang/String;
return-void
.end method