.class Lcom/pinguo/camera360/login/PGRegisterFragment$4;
.super Ljava/lang/Object;
.source "PGRegisterFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/login/PGRegisterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/login/PGRegisterFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$4;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 11

    const/4 v8, 0x1

    const/4 v7, 0x2

    iget-object v5, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$4;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    #getter for: Lcom/pinguo/camera360/login/PGRegisterFragment;->mClickEye:Z
    invoke-static {v5}, Lcom/pinguo/camera360/login/PGRegisterFragment;->access$7(Lcom/pinguo/camera360/login/PGRegisterFragment;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$4;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    const/4 v6, 0x0

    #setter for: Lcom/pinguo/camera360/login/PGRegisterFragment;->mClickEye:Z
    invoke-static {v5, v6}, Lcom/pinguo/camera360/login/PGRegisterFragment;->access$8(Lcom/pinguo/camera360/login/PGRegisterFragment;Z)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v5, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$4;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    #getter for: Lcom/pinguo/camera360/login/PGRegisterFragment;->mEmailInput:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
    invoke-static {v5}, Lcom/pinguo/camera360/login/PGRegisterFragment;->access$3(Lcom/pinguo/camera360/login/PGRegisterFragment;)Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_34

    iget-object v5, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$4;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    iget-object v6, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$4;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    const v7, 0x7f08019f

    invoke-virtual {v6, v7}, Lcom/pinguo/camera360/login/PGRegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Lcom/pinguo/camera360/login/PGRegisterFragment;->showErrorPromptTextView(Ljava/lang/String;I)V

    goto :goto_10

    :cond_34
    const-string/jumbo v4, "^[0-9a-z_-][_.0-9a-z-]{0,31}@([0-9a-z][0-9a-z-]{0,30}\\.){1,4}[a-z]{2,4}$"

    invoke-static {v4, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_54

    iget-object v5, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$4;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    iget-object v6, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$4;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    const v7, 0x7f0801a1

    invoke-virtual {v6, v7}, Lcom/pinguo/camera360/login/PGRegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Lcom/pinguo/camera360/login/PGRegisterFragment;->showErrorPromptTextView(Ljava/lang/String;I)V

    goto :goto_10

    :cond_54
    iget-object v5, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$4;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    #getter for: Lcom/pinguo/camera360/login/PGRegisterFragment;->mError:I
    invoke-static {v5}, Lcom/pinguo/camera360/login/PGRegisterFragment;->access$9(Lcom/pinguo/camera360/login/PGRegisterFragment;)I

    move-result v5

    if-eq v5, v7, :cond_65

    iget-object v5, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$4;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    #getter for: Lcom/pinguo/camera360/login/PGRegisterFragment;->mError:I
    invoke-static {v5}, Lcom/pinguo/camera360/login/PGRegisterFragment;->access$9(Lcom/pinguo/camera360/login/PGRegisterFragment;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_10

    :cond_65
    iget-object v5, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$4;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    invoke-virtual {v5, v7}, Lcom/pinguo/camera360/login/PGRegisterFragment;->hideErrorPromptTextView(I)V

    goto :goto_10
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
