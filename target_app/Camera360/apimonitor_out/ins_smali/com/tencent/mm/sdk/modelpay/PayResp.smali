.class public Lcom/tencent/mm/sdk/modelpay/PayResp;
.super Lcom/tencent/mm/sdk/modelbase/BaseResp;
.field public extData:Ljava/lang/String;
.field public prepayId:Ljava/lang/String;
.field public returnKey:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/tencent/mm/sdk/modelbase/BaseResp;-><init>()V
return-void
.end method
.method public constructor <init>(Landroid/os/Bundle;)V
.registers 2
invoke-direct {p0}, Lcom/tencent/mm/sdk/modelbase/BaseResp;-><init>()V
invoke-virtual {p0, p1}, Lcom/tencent/mm/sdk/modelpay/PayResp;->fromBundle(Landroid/os/Bundle;)V
return-void
.end method
.method public checkArgs()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public fromBundle(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->fromBundle(Landroid/os/Bundle;)V
const-string/jumbo v0, "_wxapi_payresp_prepayid"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/tencent/mm/sdk/modelpay/PayResp;->prepayId:Ljava/lang/String;
const-string/jumbo v0, "_wxapi_payresp_returnkey"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/tencent/mm/sdk/modelpay/PayResp;->returnKey:Ljava/lang/String;
const-string/jumbo v0, "_wxapi_payresp_extdata"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/tencent/mm/sdk/modelpay/PayResp;->extData:Ljava/lang/String;
return-void
.end method
.method public getType()I
.registers 2
const/4 v0, 0x5
return v0
.end method
.method public toBundle(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->toBundle(Landroid/os/Bundle;)V
const-string/jumbo v0, "_wxapi_payresp_prepayid"
iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayResp;->prepayId:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "_wxapi_payresp_returnkey"
iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayResp;->returnKey:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "_wxapi_payresp_extdata"
iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayResp;->extData:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method