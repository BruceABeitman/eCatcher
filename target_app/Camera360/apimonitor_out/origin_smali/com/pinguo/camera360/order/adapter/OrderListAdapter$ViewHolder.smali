.class Lcom/pinguo/camera360/order/adapter/OrderListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "OrderListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/order/adapter/OrderListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mIconIV:Landroid/widget/ImageView;

.field mStateChangedView:Landroid/view/View;

.field mStatusTV:Landroid/widget/TextView;

.field mTimeTV:Landroid/widget/TextView;

.field mTitleTV:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/pinguo/camera360/order/adapter/OrderListAdapter;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/adapter/OrderListAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/order/adapter/OrderListAdapter$ViewHolder;->this$0:Lcom/pinguo/camera360/order/adapter/OrderListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
