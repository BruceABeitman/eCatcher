.class public Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;
.super Ljava/lang/Object;
.implements Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;
.field private static final CONTENT_LENGTH_LIMIT:I = 0xa00000
.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.WXEmojiObject"
.field public emojiData:[B
.field public emojiPath:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;->emojiData:[B
iput-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;->emojiPath:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;->emojiPath:Ljava/lang/String;
return-void
.end method
.method public constructor <init>([B)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;->emojiData:[B
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
const/high16 v2, 0xa0
const/4 v0, 0x0
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;->emojiData:[B
if-eqz v1, :cond_c
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;->emojiData:[B
array-length v1, v1
if-nez v1, :cond_22
:cond_c
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;->emojiPath:Ljava/lang/String;
if-eqz v1, :cond_18
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;->emojiPath:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_22
:cond_18
const-string/jumbo v1, "MicroMsg.SDK.WXEmojiObject"
const-string/jumbo v2, "checkArgs fail, both arguments is null"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_21
return v0
:cond_22
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;->emojiData:[B
if-eqz v1, :cond_35
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;->emojiData:[B
array-length v1, v1
if-le v1, v2, :cond_35
const-string/jumbo v1, "MicroMsg.SDK.WXEmojiObject"
const-string/jumbo v2, "checkArgs fail, emojiData is too large"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_21
:cond_35
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;->emojiPath:Ljava/lang/String;
if-eqz v1, :cond_4b
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;->emojiPath:Ljava/lang/String;
invoke-direct {p0, v1}, Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;->getFileSize(Ljava/lang/String;)I
move-result v1
if-le v1, v2, :cond_4b
const-string/jumbo v1, "MicroMsg.SDK.WXEmojiObject"
const-string/jumbo v2, "checkArgs fail, emojiSize is too large"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_21
:cond_4b
const/4 v0, 0x1
goto :goto_21
.end method
.method public serialize(Landroid/os/Bundle;)V
.registers 4
const-string/jumbo v0, "_wxemojiobject_emojiData"
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;->emojiData:[B
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
const-string/jumbo v0, "_wxemojiobject_emojiPath"
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;->emojiPath:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public setEmojiData([B)V
.registers 2
iput-object p1, p0, Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;->emojiData:[B
return-void
.end method
.method public setEmojiPath(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;->emojiPath:Ljava/lang/String;
return-void
.end method
.method public type()I
.registers 2
const/16 v0, 0x8
return v0
.end method
.method public unserialize(Landroid/os/Bundle;)V
.registers 3
const-string/jumbo v0, "_wxemojiobject_emojiData"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B
move-result-object v0
iput-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;->emojiData:[B
const-string/jumbo v0, "_wxemojiobject_emojiPath"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;->emojiPath:Ljava/lang/String;
return-void
.end method