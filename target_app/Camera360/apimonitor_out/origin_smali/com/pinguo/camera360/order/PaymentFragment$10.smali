.class Lcom/pinguo/camera360/order/PaymentFragment$10;
.super Ljava/lang/Object;
.source "PaymentFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/PaymentFragment;->handleOrderPayError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/order/PaymentFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/PaymentFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/order/PaymentFragment$10;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment$10;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;

    invoke-virtual {v0}, Lcom/pinguo/camera360/order/PaymentFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/order/PaymentFragment$10;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
