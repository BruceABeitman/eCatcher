.class Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MsgCenterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mDescTV:Landroid/widget/TextView;

.field mIconIV:Lcom/pinguo/camera360/lib/ui/RoundImageView;

.field mTimeTV:Landroid/widget/TextView;

.field mTitleTV:Landroid/widget/TextView;

.field mUnreadView:Landroid/view/View;

.field final synthetic this$1:Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter$ViewHolder;->this$1:Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
