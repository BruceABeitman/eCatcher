.class  Lcom/pinguo/share/bind/BindManager$2;
.super Ljava/lang/Object;
.source "BindManager.java"
.implements Lcom/pinguo/share/bind/QQBinder$IQQSSOLoginCallback;
.field final synthetic this$0:Lcom/pinguo/share/bind/BindManager;
.field private final synthetic val$activity:Landroid/app/Activity;
.field private final synthetic val$authHost:Ljava/lang/String;
.field private final synthetic val$isAttention:Z
.field private final synthetic val$webSite:Ljava/lang/String;
.method constructor <init>(Lcom/pinguo/share/bind/BindManager;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
.registers 6
iput-object p1, p0, Lcom/pinguo/share/bind/BindManager$2;->this$0:Lcom/pinguo/share/bind/BindManager;
iput-object p2, p0, Lcom/pinguo/share/bind/BindManager$2;->val$activity:Landroid/app/Activity;
iput-object p3, p0, Lcom/pinguo/share/bind/BindManager$2;->val$authHost:Ljava/lang/String;
iput-object p4, p0, Lcom/pinguo/share/bind/BindManager$2;->val$webSite:Ljava/lang/String;
iput-boolean p5, p0, Lcom/pinguo/share/bind/BindManager$2;->val$isAttention:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancelled()V
.registers 1
return-void
.end method
.method public onFailed(Ljava/lang/String;)V
.registers 7
iget-object v0, p0, Lcom/pinguo/share/bind/BindManager$2;->this$0:Lcom/pinguo/share/bind/BindManager;
iget-object v1, p0, Lcom/pinguo/share/bind/BindManager$2;->val$activity:Landroid/app/Activity;
iget-object v2, p0, Lcom/pinguo/share/bind/BindManager$2;->val$authHost:Ljava/lang/String;
iget-object v3, p0, Lcom/pinguo/share/bind/BindManager$2;->val$webSite:Ljava/lang/String;
iget-boolean v4, p0, Lcom/pinguo/share/bind/BindManager$2;->val$isAttention:Z
#calls: Lcom/pinguo/share/bind/BindManager;->redirectToWebAuth(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
invoke-static {v0, v1, v2, v3, v4}, Lcom/pinguo/share/bind/BindManager;->access$0(Lcom/pinguo/share/bind/BindManager;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
return-void
.end method
.method public onSuccessed(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/share/bind/BindManager$2;->this$0:Lcom/pinguo/share/bind/BindManager;
#getter for: Lcom/pinguo/share/bind/BindManager;->mBindCallback:Lcom/pinguo/share/bind/BindManager$BindCallback;
invoke-static {v0}, Lcom/pinguo/share/bind/BindManager;->access$1(Lcom/pinguo/share/bind/BindManager;)Lcom/pinguo/share/bind/BindManager$BindCallback;
move-result-object v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/pinguo/share/bind/BindManager$2;->this$0:Lcom/pinguo/share/bind/BindManager;
#getter for: Lcom/pinguo/share/bind/BindManager;->mBindCallback:Lcom/pinguo/share/bind/BindManager$BindCallback;
invoke-static {v0}, Lcom/pinguo/share/bind/BindManager;->access$1(Lcom/pinguo/share/bind/BindManager;)Lcom/pinguo/share/bind/BindManager$BindCallback;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/share/bind/BindManager$2;->val$webSite:Ljava/lang/String;
invoke-interface {v0, p1, v1}, Lcom/pinguo/share/bind/BindManager$BindCallback;->ssoBindService(Ljava/lang/String;Ljava/lang/String;)V
:cond_13
return-void
.end method