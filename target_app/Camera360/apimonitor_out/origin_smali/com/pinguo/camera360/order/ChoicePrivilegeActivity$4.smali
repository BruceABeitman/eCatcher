.class Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$4;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "ChoicePrivilegeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->onTitleRightBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/lib/os/AsyncResult",
        "<",
        "Lcom/pinguo/camera360/order/model/Coupon$Info;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$4;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;

    invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$4;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;

    #calls: Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->cancelProgressDialog()V
    invoke-static {v1}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->access$2(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)V

    instance-of v1, p1, Lcom/pinguo/lib/os/Fault;

    if-eqz v1, :cond_6d

    move-object v0, p1

    check-cast v0, Lcom/pinguo/lib/os/Fault;

    invoke-virtual {v0}, Lcom/pinguo/lib/os/Fault;->getStatus()I

    move-result v1

    const/16 v2, 0x2812

    if-ne v1, v2, :cond_2b

    iget-object v1, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$4;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;

    #getter for: Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeErrorTipTV:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->access$1(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f080178

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$4;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;

    #getter for: Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeErrorTipTV:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->access$1(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2a
    return-void

    :cond_2b
    invoke-virtual {v0}, Lcom/pinguo/lib/os/Fault;->getStatus()I

    move-result v1

    const/16 v2, 0x2810

    if-ne v1, v2, :cond_49

    iget-object v1, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$4;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;

    #getter for: Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeErrorTipTV:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->access$1(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f08017a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$4;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;

    #getter for: Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeErrorTipTV:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->access$1(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2a

    :cond_49
    invoke-virtual {v0}, Lcom/pinguo/lib/os/Fault;->getStatus()I

    move-result v1

    const/16 v2, 0x2811

    if-ne v1, v2, :cond_67

    iget-object v1, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$4;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;

    #getter for: Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeErrorTipTV:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->access$1(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f080179

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$4;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;

    #getter for: Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeErrorTipTV:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->access$1(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2a

    :cond_67
    iget-object v1, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$4;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;

    #calls: Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->onNetworkException()V
    invoke-static {v1}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->access$4(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)V

    goto :goto_2a

    :cond_6d
    iget-object v1, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$4;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;

    #calls: Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->onNetworkException()V
    invoke-static {v1}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->access$4(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)V

    goto :goto_2a
.end method

.method public onSuccess(Lcom/pinguo/camera360/order/model/Coupon$Info;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$4;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;

    #calls: Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->cancelProgressDialog()V
    invoke-static {v0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->access$2(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$4;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;

    #calls: Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->onResult(Lcom/pinguo/camera360/order/model/Coupon$Info;)V
    invoke-static {v0, p1}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->access$3(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;Lcom/pinguo/camera360/order/model/Coupon$Info;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/pinguo/camera360/order/model/Coupon$Info;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$4;->onSuccess(Lcom/pinguo/camera360/order/model/Coupon$Info;)V

    return-void
.end method
