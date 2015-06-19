.class Lcom/pinguo/camera360/cloud/login/AssociateMailBox$10;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "AssociateMailBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->assocaiteMainboxImpl(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/lib/os/AsyncResult",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$10;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 7

    const/16 v4, 0x1a4

    iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$10;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    #calls: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->cancelProgressDialog()V
    invoke-static {v3}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$12(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalEmail(I)V

    const/4 v0, 0x0

    instance-of v3, p1, Lcom/pinguo/lib/os/Fault;

    if-eqz v3, :cond_36

    move-object v1, p1

    check-cast v1, Lcom/pinguo/lib/os/Fault;

    invoke-virtual {v1}, Lcom/pinguo/lib/os/Fault;->getStatus()I

    move-result v3

    if-ne v3, v4, :cond_2c

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "destroy_account"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$10;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4, v2}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->setResult(ILandroid/content/Intent;)V

    :goto_2b
    return-void

    :cond_2c
    iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$10;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    invoke-virtual {v1}, Lcom/pinguo/lib/os/Fault;->getStatus()I

    move-result v4

    invoke-static {v3, v4}, Lcom/pinguo/camera360/cloud/login/StatusErrorCodeMessage;->getServerStatusErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :cond_36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$10;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    const v4, 0x7f08017e

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$10;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    #calls: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->showMessage(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$13(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;Ljava/lang/String;)V

    goto :goto_2b

    :cond_4b
    iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$10;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    #calls: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->showErrorMessage(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$14(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$10;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$10;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    #calls: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->cancelProgressDialog()V
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$12(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalEmail(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$10;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->finish()V

    return-void
.end method
