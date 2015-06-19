.class Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$3;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "EditTextWithLineAndPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->checkEmailValidate(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$3;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;

    invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 7

    instance-of v3, p1, Lcom/pinguo/lib/os/Fault;

    if-eqz v3, :cond_45

    move-object v1, p1

    check-cast v1, Lcom/pinguo/lib/os/Fault;

    invoke-virtual {v1}, Lcom/pinguo/lib/os/Fault;->getStatus()I

    move-result v2

    iget-object v3, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$3;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;

    #getter for: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mHideErrorPromptListerner:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
    invoke-static {v3}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$0(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;

    move-result-object v3

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$3;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;

    #getter for: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mHideErrorPromptListerner:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
    invoke-static {v3}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$0(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;->showEmailCheckStatus(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$3;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;

    invoke-virtual {v3}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/pinguo/lib/os/Fault;->getStatus()I

    move-result v4

    invoke-static {v3, v4}, Lcom/pinguo/camera360/cloud/login/StatusErrorCodeMessage;->getServerStatusErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2918

    if-ne v2, v3, :cond_3a

    iget-object v3, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$3;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;

    #getter for: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mHideErrorPromptListerner:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
    invoke-static {v3}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$0(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;->showErrorPromptTextView(Ljava/lang/String;I)V

    :cond_39
    :goto_39
    return-void

    :cond_3a
    iget-object v3, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$3;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;

    #getter for: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mHideErrorPromptListerner:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
    invoke-static {v3}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$0(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v0, v4}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;->showErrorPromptTextView(Ljava/lang/String;I)V

    goto :goto_39

    :cond_45
    iget-object v3, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$3;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;

    #getter for: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mHideErrorPromptListerner:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
    invoke-static {v3}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$0(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;

    move-result-object v3

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$3;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;

    #getter for: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mHideErrorPromptListerner:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
    invoke-static {v3}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$0(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;

    move-result-object v3

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;->showEmailCheckStatus(I)V

    goto :goto_39
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$3;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$3;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;

    #getter for: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mHideErrorPromptListerner:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
    invoke-static {v0}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$0(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$3;->this$0:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;

    #getter for: Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mHideErrorPromptListerner:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
    invoke-static {v0}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->access$0(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;->showEmailCheckStatus(I)V

    :cond_12
    return-void
.end method
