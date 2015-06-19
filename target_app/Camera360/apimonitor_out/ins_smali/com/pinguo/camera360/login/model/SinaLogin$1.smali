.class  Lcom/pinguo/camera360/login/model/SinaLogin$1;
.super Ljava/lang/Object;
.source "SinaLogin.java"
.implements Lcom/pinguo/camera360/login/model/SinaSso$SsoInterface;
.field final synthetic this$0:Lcom/pinguo/camera360/login/model/SinaLogin;
.method constructor <init>(Lcom/pinguo/camera360/login/model/SinaLogin;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/model/SinaLogin$1;->this$0:Lcom/pinguo/camera360/login/model/SinaLogin;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public ssoFail()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/login/model/SinaLogin$1;->this$0:Lcom/pinguo/camera360/login/model/SinaLogin;
const-string/jumbo v1, "sina"
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/SinaLogin;->startWebViewLogin(Ljava/lang/String;)V
return-void
.end method