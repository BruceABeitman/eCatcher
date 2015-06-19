.class  Lcom/pinguo/share/bind/TencentWeiBoBinder$1;
.super Ljava/lang/Object;
.source "TencentWeiBoBinder.java"
.implements Lcom/pinguo/share/bind/SsoInterface;
.field final synthetic this$0:Lcom/pinguo/share/bind/TencentWeiBoBinder;
.method constructor <init>(Lcom/pinguo/share/bind/TencentWeiBoBinder;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/bind/TencentWeiBoBinder$1;->this$0:Lcom/pinguo/share/bind/TencentWeiBoBinder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public bindSso(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/share/bind/TencentWeiBoBinder$1;->this$0:Lcom/pinguo/share/bind/TencentWeiBoBinder;
#getter for: Lcom/pinguo/share/bind/TencentWeiBoBinder;->mBindCallback:Lcom/pinguo/share/bind/BindManager$BindCallback;
invoke-static {v0}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->access$0(Lcom/pinguo/share/bind/TencentWeiBoBinder;)Lcom/pinguo/share/bind/BindManager$BindCallback;
move-result-object v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/pinguo/share/bind/TencentWeiBoBinder$1;->this$0:Lcom/pinguo/share/bind/TencentWeiBoBinder;
#getter for: Lcom/pinguo/share/bind/TencentWeiBoBinder;->mBindCallback:Lcom/pinguo/share/bind/BindManager$BindCallback;
invoke-static {v0}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->access$0(Lcom/pinguo/share/bind/TencentWeiBoBinder;)Lcom/pinguo/share/bind/BindManager$BindCallback;
move-result-object v0
const-string/jumbo v1, "qq"
invoke-interface {v0, p1, v1}, Lcom/pinguo/share/bind/BindManager$BindCallback;->ssoBindService(Ljava/lang/String;Ljava/lang/String;)V
:cond_14
return-void
.end method
.method public ssoFail()V
.registers 1
return-void
.end method