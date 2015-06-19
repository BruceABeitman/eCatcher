.class Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment$2;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "PGFindPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->sendResetEmail(Landroid/content/Context;)V
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
.field final synthetic this$1:Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment$2;->this$1:Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;

    invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 6

    iget-object v2, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment$2;->this$1:Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;

    #calls: Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->dissmissDialog()V
    invoke-static {v2}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->access$1(Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;)V

    const/4 v0, 0x0

    instance-of v2, p1, Lcom/pinguo/lib/os/Fault;

    if-eqz v2, :cond_1b

    move-object v1, p1

    check-cast v1, Lcom/pinguo/lib/os/Fault;

    iget-object v2, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment$2;->this$1:Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;

    invoke-virtual {v2}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1}, Lcom/pinguo/lib/os/Fault;->getStatus()I

    move-result v3

    invoke-static {v2, v3}, Lcom/pinguo/camera360/cloud/login/StatusErrorCodeMessage;->getServerStatusErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :cond_1b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment$2;->this$1:Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;

    const v3, 0x7f08017e

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment$2;->this$1:Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;

    #calls: Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->showMessage(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->access$2(Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;Ljava/lang/String;)V

    :goto_2f
    return-void

    :cond_30
    iget-object v2, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment$2;->this$1:Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;

    #calls: Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->showErrorMessage(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->access$3(Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;Ljava/lang/String;)V

    goto :goto_2f
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment$2;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment$2;->this$1:Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;

    #calls: Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->dissmissDialog()V
    invoke-static {v0}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->access$1(Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;)V

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment$2;->this$1:Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;

    invoke-virtual {v0}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment$2;->this$1:Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;

    invoke-virtual {v0}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method
