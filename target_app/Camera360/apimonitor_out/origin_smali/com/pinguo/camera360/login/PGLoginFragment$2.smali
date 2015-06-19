.class Lcom/pinguo/camera360/login/PGLoginFragment$2;
.super Ljava/lang/Object;
.source "PGLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/login/PGLoginFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/login/PGLoginFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/login/PGLoginFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/login/PGLoginFragment$2;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 12

    const/4 v8, 0x1

    if-eqz p2, :cond_3e

    iget-object v5, p0, Lcom/pinguo/camera360/login/PGLoginFragment$2;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;

    #getter for: Lcom/pinguo/camera360/login/PGLoginFragment;->mOnceFocus:Z
    invoke-static {v5}, Lcom/pinguo/camera360/login/PGLoginFragment;->access$2(Lcom/pinguo/camera360/login/PGLoginFragment;)Z

    move-result v5

    if-nez v5, :cond_3e

    iget-object v5, p0, Lcom/pinguo/camera360/login/PGLoginFragment$2;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;

    #setter for: Lcom/pinguo/camera360/login/PGLoginFragment;->mOnceFocus:Z
    invoke-static {v5, v8}, Lcom/pinguo/camera360/login/PGLoginFragment;->access$3(Lcom/pinguo/camera360/login/PGLoginFragment;Z)V

    iget-object v5, p0, Lcom/pinguo/camera360/login/PGLoginFragment$2;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;

    #getter for: Lcom/pinguo/camera360/login/PGLoginFragment;->mErrorPromptText:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/pinguo/camera360/login/PGLoginFragment;->access$4(Lcom/pinguo/camera360/login/PGLoginFragment;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_3e

    iget-object v5, p0, Lcom/pinguo/camera360/login/PGLoginFragment$2;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;

    #getter for: Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailInput:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
    invoke-static {v5}, Lcom/pinguo/camera360/login/PGLoginFragment;->access$1(Lcom/pinguo/camera360/login/PGLoginFragment;)Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3f

    iget-object v5, p0, Lcom/pinguo/camera360/login/PGLoginFragment$2;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;

    iget-object v6, p0, Lcom/pinguo/camera360/login/PGLoginFragment$2;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;

    const v7, 0x7f08019f

    invoke-virtual {v6, v7}, Lcom/pinguo/camera360/login/PGLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Lcom/pinguo/camera360/login/PGLoginFragment;->showErrorPromptTextView(Ljava/lang/String;I)V

    :cond_3e
    :goto_3e
    return-void

    :cond_3f
    const-string/jumbo v4, "^[0-9a-z_-][_.0-9a-z-]{0,31}@([0-9a-z][0-9a-z-]{0,30}\\.){1,4}[a-z]{2,4}$"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v5, p0, Lcom/pinguo/camera360/login/PGLoginFragment$2;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;

    iget-object v6, p0, Lcom/pinguo/camera360/login/PGLoginFragment$2;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;

    const v7, 0x7f0801a1

    invoke-virtual {v6, v7}, Lcom/pinguo/camera360/login/PGLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Lcom/pinguo/camera360/login/PGLoginFragment;->showErrorPromptTextView(Ljava/lang/String;I)V

    goto :goto_3e
.end method
