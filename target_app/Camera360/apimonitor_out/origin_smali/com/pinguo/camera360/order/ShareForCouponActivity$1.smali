.class Lcom/pinguo/camera360/order/ShareForCouponActivity$1;
.super Ljava/lang/Object;
.source "ShareForCouponActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/order/ShareForCouponActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$1;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$1;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->finish()V

    return-void
.end method
