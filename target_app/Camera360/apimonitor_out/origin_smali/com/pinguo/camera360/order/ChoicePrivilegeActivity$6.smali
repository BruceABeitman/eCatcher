.class Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$6;
.super Ljava/lang/Object;
.source "ChoicePrivilegeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->showProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$6;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$6;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;

    #getter for: Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mOtherCouponFuture:Lcom/pinguo/lib/os/AsyncFuture;
    invoke-static {v0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->access$5(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)Lcom/pinguo/lib/os/AsyncFuture;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$6;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;

    #getter for: Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mOtherCouponFuture:Lcom/pinguo/lib/os/AsyncFuture;
    invoke-static {v0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->access$5(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)Lcom/pinguo/lib/os/AsyncFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/lib/os/AsyncFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$6;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;

    #getter for: Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mOtherCouponFuture:Lcom/pinguo/lib/os/AsyncFuture;
    invoke-static {v0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->access$5(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)Lcom/pinguo/lib/os/AsyncFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/lib/os/AsyncFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$6;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;

    #getter for: Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mOtherCouponFuture:Lcom/pinguo/lib/os/AsyncFuture;
    invoke-static {v0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->access$5(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)Lcom/pinguo/lib/os/AsyncFuture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z

    :cond_2a
    return-void
.end method
