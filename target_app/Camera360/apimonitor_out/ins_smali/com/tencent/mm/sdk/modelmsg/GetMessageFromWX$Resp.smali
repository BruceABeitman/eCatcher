.class public Lcom/tencent/mm/sdk/modelmsg/GetMessageFromWX$Resp;
.super Lcom/tencent/mm/sdk/modelbase/BaseResp;
.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.GetMessageFromWX.Resp"
.field public message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/tencent/mm/sdk/modelbase/BaseResp;-><init>()V
return-void
.end method
.method public constructor <init>(Landroid/os/Bundle;)V
.registers 2
invoke-direct {p0}, Lcom/tencent/mm/sdk/modelbase/BaseResp;-><init>()V
invoke-virtual {p0, p1}, Lcom/tencent/mm/sdk/modelmsg/GetMessageFromWX$Resp;->fromBundle(Landroid/os/Bundle;)V
return-void
.end method
.method public checkArgs()Z
.registers 3
iget-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/GetMessageFromWX$Resp;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
if-nez v0, :cond_f
const-string/jumbo v0, "MicroMsg.SDK.GetMessageFromWX.Resp"
const-string/jumbo v1, "checkArgs fail, message is null"
invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
:goto_e
return v0
:cond_f
iget-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/GetMessageFromWX$Resp;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
invoke-virtual {v0}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->checkArgs()Z
move-result v0
goto :goto_e
.end method
.method public fromBundle(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->fromBundle(Landroid/os/Bundle;)V
invoke-static {p1}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$Builder;->fromBundle(Landroid/os/Bundle;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
move-result-object v0
iput-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/GetMessageFromWX$Resp;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
return-void
.end method
.method public getType()I
.registers 2
const/4 v0, 0x3
return v0
.end method
.method public toBundle(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->toBundle(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/GetMessageFromWX$Resp;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
invoke-static {v0}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$Builder;->toBundle(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;)Landroid/os/Bundle;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
return-void
.end method