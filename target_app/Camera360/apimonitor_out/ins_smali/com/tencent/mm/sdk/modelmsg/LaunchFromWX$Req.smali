.class public Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;
.super Lcom/tencent/mm/sdk/modelbase/BaseReq;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/tencent/mm/sdk/modelbase/BaseReq;-><init>()V
return-void
.end method
.method public constructor <init>(Landroid/os/Bundle;)V
.registers 2
invoke-direct {p0}, Lcom/tencent/mm/sdk/modelbase/BaseReq;-><init>()V
invoke-virtual {p0, p1}, Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;->fromBundle(Landroid/os/Bundle;)V
return-void
.end method
.method public checkArgs()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public getType()I
.registers 2
const/4 v0, 0x6
return v0
.end method