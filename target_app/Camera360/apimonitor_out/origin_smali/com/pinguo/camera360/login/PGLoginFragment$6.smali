.class Lcom/pinguo/camera360/login/PGLoginFragment$6;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "PGLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/login/PGLoginFragment;->loginFromEmail(Landroid/content/Context;)V
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
.field final synthetic this$0:Lcom/pinguo/camera360/login/PGLoginFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/login/PGLoginFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/login/PGLoginFragment$6;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;

    invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 7

    iget-object v3, p0, Lcom/pinguo/camera360/login/PGLoginFragment$6;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;

    #calls: Lcom/pinguo/camera360/login/PGLoginFragment;->dissmissDialog()V
    invoke-static {v3}, Lcom/pinguo/camera360/login/PGLoginFragment;->access$12(Lcom/pinguo/camera360/login/PGLoginFragment;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    instance-of v3, p1, Lcom/pinguo/lib/os/Fault;

    if-eqz v3, :cond_20

    move-object v1, p1

    check-cast v1, Lcom/pinguo/lib/os/Fault;

    invoke-virtual {v1}, Lcom/pinguo/lib/os/Fault;->getStatus()I

    move-result v2

    iget-object v3, p0, Lcom/pinguo/camera360/login/PGLoginFragment$6;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;

    invoke-virtual {v3}, Lcom/pinguo/camera360/login/PGLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1}, Lcom/pinguo/lib/os/Fault;->getStatus()I

    move-result v4

    invoke-static {v3, v4}, Lcom/pinguo/camera360/cloud/login/StatusErrorCodeMessage;->getServerStatusErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :cond_20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/pinguo/camera360/login/PGLoginFragment$6;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;

    const v4, 0x7f0801a5

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/login/PGLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/pinguo/camera360/login/PGLoginFragment$6;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;

    #calls: Lcom/pinguo/camera360/login/PGLoginFragment;->showMessage(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/pinguo/camera360/login/PGLoginFragment;->access$14(Lcom/pinguo/camera360/login/PGLoginFragment;Ljava/lang/String;)V

    :goto_34
    return-void

    :cond_35
    const/16 v3, 0x290f

    if-ne v2, v3, :cond_40

    iget-object v3, p0, Lcom/pinguo/camera360/login/PGLoginFragment$6;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/pinguo/camera360/login/PGLoginFragment;->showErrorPromptTextView(Ljava/lang/String;I)V

    goto :goto_34

    :cond_40
    const/16 v3, 0x290e

    if-ne v2, v3, :cond_4b

    iget-object v3, p0, Lcom/pinguo/camera360/login/PGLoginFragment$6;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Lcom/pinguo/camera360/login/PGLoginFragment;->showErrorPromptTextView(Ljava/lang/String;I)V

    goto :goto_34

    :cond_4b
    iget-object v3, p0, Lcom/pinguo/camera360/login/PGLoginFragment$6;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;

    const/4 v4, 0x3

    invoke-virtual {v3, v0, v4}, Lcom/pinguo/camera360/login/PGLoginFragment;->showErrorPromptTextView(Ljava/lang/String;I)V

    goto :goto_34
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/login/PGLoginFragment$6;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment$6;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;

    #calls: Lcom/pinguo/camera360/login/PGLoginFragment;->dissmissDialog()V
    invoke-static {v0}, Lcom/pinguo/camera360/login/PGLoginFragment;->access$12(Lcom/pinguo/camera360/login/PGLoginFragment;)V

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment$6;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;

    #getter for: Lcom/pinguo/camera360/login/PGLoginFragment;->mCallback:Lcom/pinguo/camera360/login/PGLoginFragment$PGLoginFragmentListener;
    invoke-static {v0}, Lcom/pinguo/camera360/login/PGLoginFragment;->access$13(Lcom/pinguo/camera360/login/PGLoginFragment;)Lcom/pinguo/camera360/login/PGLoginFragment$PGLoginFragmentListener;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment$6;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;

    #getter for: Lcom/pinguo/camera360/login/PGLoginFragment;->mCallback:Lcom/pinguo/camera360/login/PGLoginFragment$PGLoginFragmentListener;
    invoke-static {v0}, Lcom/pinguo/camera360/login/PGLoginFragment;->access$13(Lcom/pinguo/camera360/login/PGLoginFragment;)Lcom/pinguo/camera360/login/PGLoginFragment$PGLoginFragmentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/login/PGLoginFragment$PGLoginFragmentListener;->finishLoginActivity()V

    :cond_16
    return-void
.end method
