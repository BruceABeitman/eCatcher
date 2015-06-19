.class Lcom/pinguo/camera360/order/PaymentFragment$8;
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


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/PaymentFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/order/PaymentFragment$8;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment$8;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;

    #calls: Lcom/pinguo/camera360/order/PaymentFragment;->createOrder()V
    invoke-static {v0}, Lcom/pinguo/camera360/order/PaymentFragment;->access$8(Lcom/pinguo/camera360/order/PaymentFragment;)V

    return-void
.end method
