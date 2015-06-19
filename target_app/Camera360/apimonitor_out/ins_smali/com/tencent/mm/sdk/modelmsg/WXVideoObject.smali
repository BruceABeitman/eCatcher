.class public Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;
.super Ljava/lang/Object;
.implements Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;
.field private static final LENGTH_LIMIT:I = 0x2800
.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.WXVideoObject"
.field public videoLowBandUrl:Ljava/lang/String;
.field public videoUrl:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public checkArgs()Z
.registers 4
const/16 v2, 0x2800
const/4 v0, 0x0
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;->videoUrl:Ljava/lang/String;
if-eqz v1, :cond_f
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;->videoUrl:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_25
:cond_f
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;->videoLowBandUrl:Ljava/lang/String;
if-eqz v1, :cond_1b
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;->videoLowBandUrl:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_25
:cond_1b
const-string/jumbo v1, "MicroMsg.SDK.WXVideoObject"
const-string/jumbo v2, "both arguments are null"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_24
return v0
:cond_25
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;->videoUrl:Ljava/lang/String;
if-eqz v1, :cond_3b
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;->videoUrl:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-le v1, v2, :cond_3b
const-string/jumbo v1, "MicroMsg.SDK.WXVideoObject"
const-string/jumbo v2, "checkArgs fail, videoUrl is too long"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_24
:cond_3b
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;->videoLowBandUrl:Ljava/lang/String;
if-eqz v1, :cond_51
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;->videoLowBandUrl:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-le v1, v2, :cond_51
const-string/jumbo v1, "MicroMsg.SDK.WXVideoObject"
const-string/jumbo v2, "checkArgs fail, videoLowBandUrl is too long"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_24
:cond_51
const/4 v0, 0x1
goto :goto_24
.end method
.method public serialize(Landroid/os/Bundle;)V
.registers 4
const-string/jumbo v0, "_wxvideoobject_videoUrl"
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;->videoUrl:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "_wxvideoobject_videoLowBandUrl"
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;->videoLowBandUrl:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public type()I
.registers 2
const/4 v0, 0x4
return v0
.end method
.method public unserialize(Landroid/os/Bundle;)V
.registers 3
const-string/jumbo v0, "_wxvideoobject_videoUrl"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;->videoUrl:Ljava/lang/String;
const-string/jumbo v0, "_wxvideoobject_videoLowBandUrl"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;->videoLowBandUrl:Ljava/lang/String;
return-void
.end method