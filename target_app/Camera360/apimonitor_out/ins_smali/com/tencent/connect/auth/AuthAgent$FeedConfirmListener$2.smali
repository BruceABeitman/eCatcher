.class  Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$2;
.super Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$ButtonListener;
.source "ProGuard"
.field final synthetic c:Lcom/tencent/tauth/IUiListener;
.field final synthetic d:Ljava/lang/Object;
.field final synthetic e:Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener;
.method constructor <init>(Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener;Landroid/app/Dialog;Lcom/tencent/tauth/IUiListener;Ljava/lang/Object;)V
.registers 5
iput-object p1, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$2;->e:Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener;
iput-object p3, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$2;->c:Lcom/tencent/tauth/IUiListener;
iput-object p4, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$2;->d:Ljava/lang/Object;
invoke-direct {p0, p1, p2}, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$ButtonListener;-><init>(Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener;Landroid/app/Dialog;)V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$2;->a:Landroid/app/Dialog;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$2;->a:Landroid/app/Dialog;
invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$2;->a:Landroid/app/Dialog;
invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
:cond_11
iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$2;->c:Lcom/tencent/tauth/IUiListener;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$2;->c:Lcom/tencent/tauth/IUiListener;
iget-object v1, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$2;->d:Ljava/lang/Object;
invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
:cond_1c
const-string v1, " - Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method