.class Lcom/pinguo/camera360/cloud/login/ModifyNickName$2;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "ModifyNickName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/cloud/login/ModifyNickName;->changeNicknameImp(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/login/ModifyNickName;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/cloud/login/ModifyNickName;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName$2;->this$0:Lcom/pinguo/camera360/cloud/login/ModifyNickName;

    invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 7

    const/16 v4, 0x1a4

    iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName$2;->this$0:Lcom/pinguo/camera360/cloud/login/ModifyNickName;

    #calls: Lcom/pinguo/camera360/cloud/login/ModifyNickName;->dismissDialog()V
    invoke-static {v3}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->access$1(Lcom/pinguo/camera360/cloud/login/ModifyNickName;)V

    const/4 v0, 0x0

    instance-of v3, p1, Lcom/pinguo/lib/os/Fault;

    if-eqz v3, :cond_40

    move-object v1, p1

    check-cast v1, Lcom/pinguo/lib/os/Fault;

    invoke-virtual {v1}, Lcom/pinguo/lib/os/Fault;->getStatus()I

    move-result v3

    if-ne v3, v4, :cond_28

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "destroy_account"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName$2;->this$0:Lcom/pinguo/camera360/cloud/login/ModifyNickName;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4, v2}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->setResult(ILandroid/content/Intent;)V

    :goto_27
    return-void

    :cond_28
    invoke-virtual {v1}, Lcom/pinguo/lib/os/Fault;->getStatus()I

    move-result v3

    const/16 v4, 0x271c

    if-ne v3, v4, :cond_36

    iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName$2;->this$0:Lcom/pinguo/camera360/cloud/login/ModifyNickName;

    #calls: Lcom/pinguo/camera360/cloud/login/ModifyNickName;->onRemoteNicknameExist()V
    invoke-static {v3}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->access$2(Lcom/pinguo/camera360/cloud/login/ModifyNickName;)V

    goto :goto_27

    :cond_36
    iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName$2;->this$0:Lcom/pinguo/camera360/cloud/login/ModifyNickName;

    invoke-virtual {v1}, Lcom/pinguo/lib/os/Fault;->getStatus()I

    move-result v4

    invoke-static {v3, v4}, Lcom/pinguo/camera360/cloud/login/StatusErrorCodeMessage;->getServerStatusErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :cond_40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_55

    iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName$2;->this$0:Lcom/pinguo/camera360/cloud/login/ModifyNickName;

    const v4, 0x7f080168

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName$2;->this$0:Lcom/pinguo/camera360/cloud/login/ModifyNickName;

    #calls: Lcom/pinguo/camera360/cloud/login/ModifyNickName;->showMessage(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->access$3(Lcom/pinguo/camera360/cloud/login/ModifyNickName;Ljava/lang/String;)V

    goto :goto_27

    :cond_55
    iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName$2;->this$0:Lcom/pinguo/camera360/cloud/login/ModifyNickName;

    #getter for: Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mErrorTipTV:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->access$0(Lcom/pinguo/camera360/cloud/login/ModifyNickName;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/cloud/login/ModifyNickName$2;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName$2;->this$0:Lcom/pinguo/camera360/cloud/login/ModifyNickName;

    #calls: Lcom/pinguo/camera360/cloud/login/ModifyNickName;->dismissDialog()V
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->access$1(Lcom/pinguo/camera360/cloud/login/ModifyNickName;)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName$2;->this$0:Lcom/pinguo/camera360/cloud/login/ModifyNickName;

    invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->finish()V

    return-void
.end method
