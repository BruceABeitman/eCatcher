.class Lcom/pinguo/camera360/login/PGRegisterFragment$6;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "PGRegisterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/login/PGRegisterFragment;->registerEmail(Landroid/content/Context;)V
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
.field final synthetic this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/login/PGRegisterFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$6;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 8

    const/16 v5, 0x2916

    iget-object v3, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$6;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    #calls: Lcom/pinguo/camera360/login/PGRegisterFragment;->dissmissDialog()V
    invoke-static {v3}, Lcom/pinguo/camera360/login/PGRegisterFragment;->access$14(Lcom/pinguo/camera360/login/PGRegisterFragment;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    instance-of v3, p1, Lcom/pinguo/lib/os/Fault;

    if-eqz v3, :cond_1e

    move-object v1, p1

    check-cast v1, Lcom/pinguo/lib/os/Fault;

    invoke-virtual {v1}, Lcom/pinguo/lib/os/Fault;->getStatus()I

    move-result v2

    iget-object v3, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$6;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    invoke-virtual {v3}, Lcom/pinguo/camera360/login/PGRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/pinguo/camera360/cloud/login/StatusErrorCodeMessage;->getServerStatusErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :cond_1e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-object v3, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$6;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    const v4, 0x7f0801a6

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/login/PGRegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$6;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    #calls: Lcom/pinguo/camera360/login/PGRegisterFragment;->showMessage(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/pinguo/camera360/login/PGRegisterFragment;->access$15(Lcom/pinguo/camera360/login/PGRegisterFragment;Ljava/lang/String;)V

    :goto_32
    if-ne v2, v5, :cond_3a

    iget-object v3, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$6;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/login/PGRegisterFragment;->showEmailCheckStatus(I)V

    :cond_3a
    return-void

    :cond_3b
    if-ne v2, v5, :cond_44

    iget-object v3, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$6;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/pinguo/camera360/login/PGRegisterFragment;->showErrorPromptTextView(Ljava/lang/String;I)V

    goto :goto_32

    :cond_44
    iget-object v3, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$6;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    const/4 v4, 0x3

    invoke-virtual {v3, v0, v4}, Lcom/pinguo/camera360/login/PGRegisterFragment;->showErrorPromptTextView(Ljava/lang/String;I)V

    goto :goto_32
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/login/PGRegisterFragment$6;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$6;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    #calls: Lcom/pinguo/camera360/login/PGRegisterFragment;->dissmissDialog()V
    invoke-static {v0}, Lcom/pinguo/camera360/login/PGRegisterFragment;->access$14(Lcom/pinguo/camera360/login/PGRegisterFragment;)V

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$6;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    #getter for: Lcom/pinguo/camera360/login/PGRegisterFragment;->mCallback:Lcom/pinguo/camera360/login/PGRegisterFragment$PGRegisterFragmentListener;
    invoke-static {v0}, Lcom/pinguo/camera360/login/PGRegisterFragment;->access$2(Lcom/pinguo/camera360/login/PGRegisterFragment;)Lcom/pinguo/camera360/login/PGRegisterFragment$PGRegisterFragmentListener;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$6;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    #getter for: Lcom/pinguo/camera360/login/PGRegisterFragment;->mCallback:Lcom/pinguo/camera360/login/PGRegisterFragment$PGRegisterFragmentListener;
    invoke-static {v0}, Lcom/pinguo/camera360/login/PGRegisterFragment;->access$2(Lcom/pinguo/camera360/login/PGRegisterFragment;)Lcom/pinguo/camera360/login/PGRegisterFragment$PGRegisterFragmentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/login/PGRegisterFragment$PGRegisterFragmentListener;->startPersonalInformation()V

    :cond_16
    return-void
.end method
