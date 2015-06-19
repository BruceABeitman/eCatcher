.class Lcom/tencent/connect/auth/AuthDialog$JsListener;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/auth/AuthDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JsListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/auth/AuthDialog;


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$JsListener;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->f(Lcom/tencent/connect/auth/AuthDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$JsListener;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/AuthDialog;->dismiss()V

    return-void
.end method

.method public onCancelLogin()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/connect/auth/AuthDialog$JsListener;->onCancel(Ljava/lang/String;)V

    return-void
.end method

.method public onLoad(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$JsListener;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->f(Lcom/tencent/connect/auth/AuthDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showMsg(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$JsListener;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->f(Lcom/tencent/connect/auth/AuthDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
