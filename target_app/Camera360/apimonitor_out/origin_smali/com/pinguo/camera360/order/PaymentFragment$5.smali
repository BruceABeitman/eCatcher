.class Lcom/pinguo/camera360/order/PaymentFragment$5;
.super Ljava/lang/Object;
.source "PaymentFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/PaymentFragment;->payOrderByWXPay()V
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

    iput-object p1, p0, Lcom/pinguo/camera360/order/PaymentFragment$5;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const-string/jumbo v2, "http://weixin.qq.com/d"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/pinguo/camera360/order/PaymentFragment$5;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;

    invoke-virtual {v2, v0}, Lcom/pinguo/camera360/order/PaymentFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
