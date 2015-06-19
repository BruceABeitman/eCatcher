.class public Lcom/pinguo/camera360/login/model/TwitterLogin;
.super Lcom/pinguo/camera360/login/model/WebviewLogin;
.source "TwitterLogin.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/login/model/WebviewLogin;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public get(Lcom/pinguo/lib/os/AsyncResult;)V
.registers 3
const-string/jumbo v0, "twitter"
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/login/model/TwitterLogin;->startWebViewLogin(Ljava/lang/String;)V
return-void
.end method
.method public bridge synthetic startWebViewBind(Ljava/lang/String;)V
.registers 2
invoke-super {p0, p1}, Lcom/pinguo/camera360/login/model/WebviewLogin;->startWebViewBind(Ljava/lang/String;)V
return-void
.end method
.method public bridge synthetic startWebViewLogin(Ljava/lang/String;)V
.registers 2
invoke-super {p0, p1}, Lcom/pinguo/camera360/login/model/WebviewLogin;->startWebViewLogin(Ljava/lang/String;)V
return-void
.end method