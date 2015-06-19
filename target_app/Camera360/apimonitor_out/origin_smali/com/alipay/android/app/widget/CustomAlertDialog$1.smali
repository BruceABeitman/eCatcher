.class Lcom/alipay/android/app/widget/CustomAlertDialog$1;
.super Ljava/lang/Object;
.source "CustomAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/widget/CustomAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/widget/CustomAlertDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/widget/CustomAlertDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$1;->this$0:Lcom/alipay/android/app/widget/CustomAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    if-nez v0, :cond_e

    iget-object v2, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$1;->this$0:Lcom/alipay/android/app/widget/CustomAlertDialog;

    invoke-virtual {v2}, Lcom/alipay/android/app/widget/CustomAlertDialog;->dismiss()V

    :goto_d
    return-void

    :cond_e
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_17
    iget-object v2, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$1;->this$0:Lcom/alipay/android/app/widget/CustomAlertDialog;

    #getter for: Lcom/alipay/android/app/widget/CustomAlertDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/alipay/android/app/widget/CustomAlertDialog;->access$0(Lcom/alipay/android/app/widget/CustomAlertDialog;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$1;->this$0:Lcom/alipay/android/app/widget/CustomAlertDialog;

    #getter for: Lcom/alipay/android/app/widget/CustomAlertDialog;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v4}, Lcom/alipay/android/app/widget/CustomAlertDialog;->access$1(Lcom/alipay/android/app/widget/CustomAlertDialog;)Landroid/content/DialogInterface;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_d
.end method
