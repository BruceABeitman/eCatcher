.class Lcom/pinguo/camera360/login/PGRegisterFragment$1;
.super Ljava/lang/Object;
.source "PGRegisterFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$1;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v4, 0x1

    const v2, -0x1c3ab2

    const/4 v3, -0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$1;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    #getter for: Lcom/pinguo/camera360/login/PGRegisterFragment;->mHasAccountText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/pinguo/camera360/login/PGRegisterFragment;->access$0(Lcom/pinguo/camera360/login/PGRegisterFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$1;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    #getter for: Lcom/pinguo/camera360/login/PGRegisterFragment;->mHasAccountLine:Landroid/view/View;
    invoke-static {v1}, Lcom/pinguo/camera360/login/PGRegisterFragment;->access$1(Lcom/pinguo/camera360/login/PGRegisterFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1d
    :goto_1d
    return v4

    :cond_1e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_71

    iget-object v1, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$1;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    #getter for: Lcom/pinguo/camera360/login/PGRegisterFragment;->mHasAccountText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/pinguo/camera360/login/PGRegisterFragment;->access$0(Lcom/pinguo/camera360/login/PGRegisterFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$1;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    #getter for: Lcom/pinguo/camera360/login/PGRegisterFragment;->mHasAccountLine:Landroid/view/View;
    invoke-static {v1}, Lcom/pinguo/camera360/login/PGRegisterFragment;->access$1(Lcom/pinguo/camera360/login/PGRegisterFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$1;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    #getter for: Lcom/pinguo/camera360/login/PGRegisterFragment;->mCallback:Lcom/pinguo/camera360/login/PGRegisterFragment$PGRegisterFragmentListener;
    invoke-static {v1}, Lcom/pinguo/camera360/login/PGRegisterFragment;->access$2(Lcom/pinguo/camera360/login/PGRegisterFragment;)Lcom/pinguo/camera360/login/PGRegisterFragment$PGRegisterFragmentListener;

    move-result-object v1

    if-eqz v1, :cond_1d

    const v1, 0x7f0a02be

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalRegisterLayBtnClick(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$1;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    #getter for: Lcom/pinguo/camera360/login/PGRegisterFragment;->mEmailInput:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
    invoke-static {v1}, Lcom/pinguo/camera360/login/PGRegisterFragment;->access$3(Lcom/pinguo/camera360/login/PGRegisterFragment;)Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$1;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    #getter for: Lcom/pinguo/camera360/login/PGRegisterFragment;->mCallback:Lcom/pinguo/camera360/login/PGRegisterFragment$PGRegisterFragmentListener;
    invoke-static {v1}, Lcom/pinguo/camera360/login/PGRegisterFragment;->access$2(Lcom/pinguo/camera360/login/PGRegisterFragment;)Lcom/pinguo/camera360/login/PGRegisterFragment$PGRegisterFragmentListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/pinguo/camera360/login/PGRegisterFragment$PGRegisterFragmentListener;->changeToLoginEmailFragment(Ljava/lang/String;)V

    goto :goto_1d

    :cond_63
    iget-object v1, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$1;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    #getter for: Lcom/pinguo/camera360/login/PGRegisterFragment;->mCallback:Lcom/pinguo/camera360/login/PGRegisterFragment$PGRegisterFragmentListener;
    invoke-static {v1}, Lcom/pinguo/camera360/login/PGRegisterFragment;->access$2(Lcom/pinguo/camera360/login/PGRegisterFragment;)Lcom/pinguo/camera360/login/PGRegisterFragment$PGRegisterFragmentListener;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/pinguo/camera360/login/PGRegisterFragment$PGRegisterFragmentListener;->changeToLoginEmailFragment(Ljava/lang/String;)V

    goto :goto_1d

    :cond_71
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1d

    iget-object v1, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$1;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    #getter for: Lcom/pinguo/camera360/login/PGRegisterFragment;->mHasAccountText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/pinguo/camera360/login/PGRegisterFragment;->access$0(Lcom/pinguo/camera360/login/PGRegisterFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/login/PGRegisterFragment$1;->this$0:Lcom/pinguo/camera360/login/PGRegisterFragment;

    #getter for: Lcom/pinguo/camera360/login/PGRegisterFragment;->mHasAccountLine:Landroid/view/View;
    invoke-static {v1}, Lcom/pinguo/camera360/login/PGRegisterFragment;->access$1(Lcom/pinguo/camera360/login/PGRegisterFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1d
.end method
