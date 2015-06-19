.class Lcom/pinguo/camera360/order/PaymentFragment$9;
.super Ljava/lang/Object;
.source "PaymentFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/PaymentFragment;->handleOrderCreateError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/order/PaymentFragment;

.field private final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/PaymentFragment;Ljava/lang/Exception;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/order/PaymentFragment$9;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;

    iput-object p2, p0, Lcom/pinguo/camera360/order/PaymentFragment$9;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment$9;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;

    const/4 v1, 0x0

    #setter for: Lcom/pinguo/camera360/order/PaymentFragment;->mBusy:Z
    invoke-static {v0, v1}, Lcom/pinguo/camera360/order/PaymentFragment;->access$9(Lcom/pinguo/camera360/order/PaymentFragment;Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment$9;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;

    #getter for: Lcom/pinguo/camera360/order/PaymentFragment;->mPaymentResult:Lcom/pinguo/camera360/order/PaymentFragment$PaymentResult;
    invoke-static {v0}, Lcom/pinguo/camera360/order/PaymentFragment;->access$0(Lcom/pinguo/camera360/order/PaymentFragment;)Lcom/pinguo/camera360/order/PaymentFragment$PaymentResult;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/pinguo/camera360/order/PaymentFragment$9;->val$e:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/order/PaymentFragment$PaymentResult;->onPaymentResultError(ILjava/lang/String;)V

    return-void
.end method
