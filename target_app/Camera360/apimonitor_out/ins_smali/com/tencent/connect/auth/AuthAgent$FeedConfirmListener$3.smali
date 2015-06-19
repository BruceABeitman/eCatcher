.class  Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$3;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic a:Lcom/tencent/tauth/IUiListener;
.field final synthetic b:Ljava/lang/Object;
.field final synthetic c:Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener;
.method constructor <init>(Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener;Lcom/tencent/tauth/IUiListener;Ljava/lang/Object;)V
.registers 4
iput-object p1, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$3;->c:Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener;
iput-object p2, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$3;->a:Lcom/tencent/tauth/IUiListener;
iput-object p3, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$3;->b:Ljava/lang/Object;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancel(Landroid/content/DialogInterface;)V
.registers 4
iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$3;->a:Lcom/tencent/tauth/IUiListener;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$3;->a:Lcom/tencent/tauth/IUiListener;
iget-object v1, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$3;->b:Ljava/lang/Object;
invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
:cond_b
return-void
.end method