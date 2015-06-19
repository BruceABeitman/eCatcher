.class public Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;
.super Lcom/tencent/mm/sdk/modelbase/BaseReq;
.field private static final LENGTH_LIMIT:I = 0x400
.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.SendAuth.Req"
.field public scope:Ljava/lang/String;
.field public state:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/tencent/mm/sdk/modelbase/BaseReq;-><init>()V
return-void
.end method
.method public constructor <init>(Landroid/os/Bundle;)V
.registers 2
invoke-direct {p0}, Lcom/tencent/mm/sdk/modelbase/BaseReq;-><init>()V
invoke-virtual {p0, p1}, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->fromBundle(Landroid/os/Bundle;)V
return-void
.end method
.method public checkArgs()Z
.registers 4
const/16 v2, 0x400
const/4 v0, 0x0
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;
if-eqz v1, :cond_17
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-eqz v1, :cond_17
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-le v1, v2, :cond_21
:cond_17
const-string/jumbo v1, "MicroMsg.SDK.SendAuth.Req"
const-string/jumbo v2, "checkArgs fail, scope is invalid"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_20
return v0
:cond_21
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->state:Ljava/lang/String;
if-eqz v1, :cond_37
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->state:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-le v1, v2, :cond_37
const-string/jumbo v1, "MicroMsg.SDK.SendAuth.Req"
const-string/jumbo v2, "checkArgs fail, state is invalid"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_20
:cond_37
const/4 v0, 0x1
goto :goto_20
.end method
.method public fromBundle(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->fromBundle(Landroid/os/Bundle;)V
const-string/jumbo v0, "_wxapi_sendauth_req_scope"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;
const-string/jumbo v0, "_wxapi_sendauth_req_state"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->state:Ljava/lang/String;
return-void
.end method
.method public getType()I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public toBundle(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->toBundle(Landroid/os/Bundle;)V
const-string/jumbo v0, "_wxapi_sendauth_req_scope"
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "_wxapi_sendauth_req_state"
iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->state:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method