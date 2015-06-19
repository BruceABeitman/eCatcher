.class Lcom/pinguo/camera360/cloud/login/AssociateMailBox$9;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "AssociateMailBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->checkEmailAddr(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/lib/os/AsyncResult",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

.field private final synthetic val$continueAssociateMailbox:Z

.field private final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;ZLjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$9;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    iput-boolean p2, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$9;->val$continueAssociateMailbox:Z

    iput-object p3, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$9;->val$email:Ljava/lang/String;

    invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 6

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$9;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    #calls: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->onRemoteCheckEmailAddrException()V
    invoke-static {v1}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$11(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V

    new-instance v0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$9;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    const v2, 0x7f08016c

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V

    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$9;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    #calls: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->onRemoteCheckEmailAddrOk()V
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$7(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V

    iget-boolean v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$9;->val$continueAssociateMailbox:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$9;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    #calls: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->checkPassword()Z
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$5(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$9;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$9;->val$email:Ljava/lang/String;

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$9;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    #getter for: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordET:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$8(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->assocaiteMainboxImpl(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$9(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$9;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    #calls: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->onRemoteCheckEmailAddrHasExisten()V
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$10(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V

    goto :goto_2c
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$9;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
