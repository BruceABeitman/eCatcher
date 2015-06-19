.class Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment$1;
.super Ljava/lang/Object;
.source "PGFindPasswordActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment$1;->this$1:Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment$1;->this$1:Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;

    #getter for: Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mErrorText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->access$0(Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment$1;->this$1:Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;

    #getter for: Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mErrorText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->access$0(Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_22

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment$1;->this$1:Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;

    #getter for: Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mErrorText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->access$0(Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_22
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
