.class  Lcom/lenovo/sharesdk/ShareWrapper$2;
.super Ljava/lang/Object;
.source "ShareWrapper.java"
.implements Lcom/lenovo/anyshare/sdk/internal/cb;
.field final synthetic a:Lcom/lenovo/sharesdk/ShareWrapper;
.method constructor <init>(Lcom/lenovo/sharesdk/ShareWrapper;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/sharesdk/ShareWrapper$2;->a:Lcom/lenovo/sharesdk/ShareWrapper;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onNetworkStatusChanged(Lcom/lenovo/anyshare/sdk/internal/cd;Z)V
.registers 5
sget-object v0, Lcom/lenovo/sharesdk/ShareWrapper$3;->a:[I
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/cd;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_2e
:goto_b
return-void
:pswitch_c
if-eqz p2, :cond_12
invoke-static {}, Lcom/lenovo/sharesdk/ShareManager;->startServer()V
goto :goto_b
:cond_12
invoke-static {}, Lcom/lenovo/sharesdk/ShareManager;->stopServer()V
goto :goto_b
:pswitch_16
if-eqz p2, :cond_2a
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper$2;->a:Lcom/lenovo/sharesdk/ShareWrapper;
invoke-static {v0}, Lcom/lenovo/sharesdk/ShareWrapper;->a(Lcom/lenovo/sharesdk/ShareWrapper;)Lcom/lenovo/anyshare/sdk/internal/cj;
move-result-object v0
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/cj;->c()Lcom/lenovo/network/base/Device;
move-result-object v0
invoke-virtual {v0}, Lcom/lenovo/network/base/Device;->getIp()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/lenovo/sharesdk/ShareManager;->connectToServer(Ljava/lang/String;)V
goto :goto_b
:cond_2a
invoke-static {}, Lcom/lenovo/sharesdk/ShareManager;->disconnectFromServer()V
goto :goto_b
:pswitch_data_2e
.packed-switch 0x1
:pswitch_c
:pswitch_16
.end packed-switch
.end method