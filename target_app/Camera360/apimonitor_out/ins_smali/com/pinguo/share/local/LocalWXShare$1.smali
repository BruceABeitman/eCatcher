.class  Lcom/pinguo/share/local/LocalWXShare$1;
.super Ljava/lang/Object;
.source "LocalWXShare.java"
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
.registers 2
return-void
.end method
.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
.registers 3
iget v0, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I
packed-switch v0, :pswitch_data_6
:pswitch_5
return-void
:pswitch_data_6
.packed-switch -0x4
:pswitch_5
:pswitch_5
:pswitch_5
:pswitch_5
:pswitch_5
.end packed-switch
.end method