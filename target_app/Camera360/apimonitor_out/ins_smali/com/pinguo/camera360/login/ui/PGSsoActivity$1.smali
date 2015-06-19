.class  Lcom/pinguo/camera360/login/ui/PGSsoActivity$1;
.super Ljava/lang/Object;
.source "PGSsoActivity.java"
.implements Lcom/pinguo/camera360/login/model/SinaSso$SsoInterface;
.field final synthetic this$0:Lcom/pinguo/camera360/login/ui/PGSsoActivity;
.method constructor <init>(Lcom/pinguo/camera360/login/ui/PGSsoActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/ui/PGSsoActivity$1;->this$0:Lcom/pinguo/camera360/login/ui/PGSsoActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public ssoFail()V
.registers 3
new-instance v0, Lcom/pinguo/camera360/login/model/SinaLogin;
iget-object v1, p0, Lcom/pinguo/camera360/login/ui/PGSsoActivity$1;->this$0:Lcom/pinguo/camera360/login/ui/PGSsoActivity;
invoke-direct {v0, v1}, Lcom/pinguo/camera360/login/model/SinaLogin;-><init>(Landroid/content/Context;)V
const-string/jumbo v1, "sina"
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/SinaLogin;->startWebViewLogin(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/login/ui/PGSsoActivity$1;->this$0:Lcom/pinguo/camera360/login/ui/PGSsoActivity;
invoke-virtual {v1}, Lcom/pinguo/camera360/login/ui/PGSsoActivity;->finish()V
return-void
.end method